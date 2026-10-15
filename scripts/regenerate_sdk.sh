#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."
repo_root="$PWD"

generator_version="7.13.0"
generator_image="openapitools/openapi-generator-cli:v${generator_version}"
clients=(
  "Attachments-1-0.yaml|attachments_client"
  "Billing-1-0.yaml|billing_client"
  "Communication-1-0.yaml|communication_client"
  "Configuration-1-0.yaml|configuration_client"
  "Forecasting-1-0.yaml|forecasting_client"
  "Masterdata-1-0.yaml|masterdata_client"
  "Metering-1-0.yaml|metering_client"
  "RegionalRegulations-1-0.yaml|regionalregulations_client"
)
auto_approve=0
fetch_options=()

usage() {
  cat <<'EOF'
Usage: scripts/regenerate_sdk.sh [--yes|--non-interactive] [--api-version VERSION] [--base-url URL]

Fetch current OpenAPI specs, prompt before regenerating if any differ, then
regenerate all SDK clients. --yes and --non-interactive accept spec updates
without prompting. Fetch options are passed to fetch_openapi_specs.py.
EOF
}

while [[ "$#" -gt 0 ]]; do
  case "$1" in
    --yes|-y|--non-interactive)
      auto_approve=1
      shift
      ;;
    --api-version|--base-url)
      if [[ "$#" -lt 2 ]]; then
        printf 'Missing value for %s\n' "$1" >&2
        usage >&2
        exit 2
      fi
      fetch_options+=("$1" "$2")
      shift 2
      ;;
    --api-version=*|--base-url=*)
      fetch_options+=("$1")
      shift
      ;;
    --help|-h)
      usage
      exit 0
      ;;
    *)
      printf 'Unknown option: %s\n' "$1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

if ! command -v uv >/dev/null 2>&1; then
  printf 'Required command not found: uv\n' >&2
  exit 1
fi

for entry in "${clients[@]}"; do
  IFS='|' read -r spec client <<< "$entry"
  if [[ ! -f "$repo_root/openapi_specs/$spec" ]]; then
    printf 'OpenAPI specification not found: %s\n' "$repo_root/openapi_specs/$spec" >&2
    exit 1
  fi
done

stage_root="$(mktemp -d "$repo_root/.regenerate-sdk.XXXXXX")"
sdk_swapped=0
specs_swapped=0
container_id=""

cleanup() {
  local status=$?
  if [[ "$sdk_swapped" -eq 1 && -d "$stage_root/previous-sdk" ]]; then
    rm -rf "$repo_root/sdk"
    mv "$stage_root/previous-sdk" "$repo_root/sdk"
  fi
  if [[ "$specs_swapped" -eq 1 ]]; then
    for entry in "${clients[@]}"; do
      local spec
      IFS='|' read -r spec _ <<< "$entry"
      if [[ -f "$stage_root/previous-specs/$spec" ]]; then
        rm -f "$repo_root/openapi_specs/$spec"
        mv "$stage_root/previous-specs/$spec" "$repo_root/openapi_specs/$spec"
      fi
    done
  fi
  if [[ -n "$container_id" ]]; then
    docker rm -f "$container_id" >/dev/null 2>&1 || true
  fi
  rm -rf "$stage_root"
  exit "$status"
}
trap cleanup EXIT

uv run python scripts/fetch_openapi_specs.py \
  --output-dir "$stage_root/fetched_specs" "${fetch_options[@]}"

changed_specs=()
for entry in "${clients[@]}"; do
  IFS='|' read -r spec client <<< "$entry"
  if ! cmp -s "$repo_root/openapi_specs/$spec" \
    "$stage_root/fetched_specs/$spec"; then
    changed_specs+=("$spec")
  fi
done

if [[ "${#changed_specs[@]}" -gt 0 ]]; then
  printf 'Fetched OpenAPI specs differ from the current files:\n'
  printf '  %s\n' "${changed_specs[@]}"
  if [[ "$auto_approve" -eq 1 ]]; then
    printf 'Non-interactive mode: accepting spec updates.\n'
  else
    if [[ ! -t 0 ]]; then
      printf 'A terminal is required to approve updates; rerun with --yes.\n' >&2
      exit 2
    fi
    read -r -p 'Update the specs and regenerate the SDK? [y/N] ' answer
    case "$answer" in
      y|Y|yes|YES|Yes)
        ;;
      *)
        printf 'Update declined; specs and SDK were left unchanged.\n'
        exit 0
        ;;
    esac
  fi
else
  printf 'Fetched OpenAPI specs match the current files.\n'
fi

if ! command -v docker >/dev/null 2>&1; then
  printf 'Required command not found: docker\n' >&2
  exit 1
fi

container_id="$(docker create --entrypoint sh "$generator_image" -c 'sleep infinity')"
docker start "$container_id" >/dev/null
docker exec "$container_id" mkdir -p /local/openapi_specs /local/sdk
docker cp "$stage_root/fetched_specs/." "$container_id:/local/openapi_specs/"

for entry in "${clients[@]}"; do
  IFS='|' read -r spec client <<< "$entry"
  generator_options=()
  if [[ "$spec" == "Masterdata-1-0.yaml" ]]; then
    generator_options+=(--skip-validate-spec)
  fi
  generator_log="$stage_root/${client}.log"
  if ! docker exec "$container_id" docker-entrypoint.sh generate \
    -i "/local/openapi_specs/${spec}" \
    -g python \
    -o "/local/sdk/${client}" \
    --package-name "$client" \
    "${generator_options[@]}" >"$generator_log" 2>&1; then
    cat "$generator_log" >&2
    exit 1
  fi
done

mkdir -p "$stage_root/staged/sdk"
docker cp "$container_id:/local/sdk/." "$stage_root/staged/sdk/"
uv run python scripts/patch_api_version.py --root "$stage_root/staged"
uv run python scripts/patch_api_version.py --root "$stage_root/staged" --check

mkdir -p "$stage_root/previous-specs"
specs_swapped=1
for entry in "${clients[@]}"; do
  IFS='|' read -r spec client <<< "$entry"
  mv "$repo_root/openapi_specs/$spec" "$stage_root/previous-specs/$spec"
  mv "$stage_root/fetched_specs/$spec" "$repo_root/openapi_specs/$spec"
done

mv "$repo_root/sdk" "$stage_root/previous-sdk"
sdk_swapped=1
mv "$stage_root/staged/sdk" "$repo_root/sdk"
rm -rf "$stage_root/previous-sdk"
rm -rf "$stage_root/previous-specs"
sdk_swapped=0
specs_swapped=0
