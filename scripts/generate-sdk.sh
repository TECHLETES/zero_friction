#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
generator_image="openapitools/openapi-generator-cli@sha256:d01768f74ed889de3b76196658a7fcc69a4208d2da11d6e6415303776013d6c9"
client_names=(
  attachments
  billing
  communication
  configuration
  forecasting
  masterdata
  metering
  regionalregulations
)

build_root="$(mktemp -d "${repo_root}/.sdk-build.XXXXXX")"
trap 'rm -rf -- "$build_root"' EXIT

for client_name in "${client_names[@]}"; do
  spec_name="${client_name^}"
  if [[ "$client_name" == "regionalregulations" ]]; then
    spec_name="RegionalRegulations"
  fi

  generator_args=()
  # The vendor's Masterdata export repeats Name and Id on two operations.
  # OpenAPI Generator de-duplicates them, but its validation rejects the input.
  if [[ "$client_name" == "masterdata" ]]; then
    generator_args+=(--skip-validate-spec)
  fi

  docker run --rm --user "$(id -u):$(id -g)" \
    --volume "${repo_root}/openapi_specs:/specs:ro" \
    --volume "${build_root}:/output" \
    "$generator_image" generate \
    --input-spec "/specs/${spec_name}-1-0.yaml" \
    --generator-name python \
    --output "/output/${client_name}_client" \
    --package-name "${client_name}_client" \
    "${generator_args[@]}"
done

uv run --no-project python "${repo_root}/scripts/patch-generated-sdk.py" "$build_root"
rsync --archive --delete "${build_root}/" "${repo_root}/sdk/"
