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

for command in docker uv; do
  if ! command -v "$command" >/dev/null 2>&1; then
    printf 'Required command not found: %s\n' "$command" >&2
    exit 1
  fi
done

for entry in "${clients[@]}"; do
  IFS='|' read -r spec client <<< "$entry"
  if [[ ! -f "$repo_root/openapi_specs/$spec" ]]; then
    printf 'OpenAPI specification not found: %s\n' "$repo_root/openapi_specs/$spec" >&2
    exit 1
  fi
done

stage_root="$(mktemp -d "$repo_root/.regenerate-sdk.XXXXXX")"
container_id="$(docker create --entrypoint sh "$generator_image" -c 'sleep infinity')"
sdk_swapped=0

cleanup() {
  local status=$?
  if [[ "$sdk_swapped" -eq 1 && -d "$stage_root/previous-sdk" ]]; then
    rm -rf "$repo_root/sdk"
    mv "$stage_root/previous-sdk" "$repo_root/sdk"
  fi
  docker rm -f "$container_id" >/dev/null 2>&1 || true
  rm -rf "$stage_root"
  exit "$status"
}
trap cleanup EXIT

docker start "$container_id" >/dev/null
docker exec "$container_id" mkdir -p /local/openapi_specs /local/sdk
docker cp "$repo_root/openapi_specs/." "$container_id:/local/openapi_specs/"

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

mv "$repo_root/sdk" "$stage_root/previous-sdk"
sdk_swapped=1
mv "$stage_root/staged/sdk" "$repo_root/sdk"
rm -rf "$stage_root/previous-sdk"
sdk_swapped=0
