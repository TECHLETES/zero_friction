#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

generator_version="7.13.0"
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

for entry in "${clients[@]}"; do
  IFS='|' read -r spec client <<< "$entry"
  docker run --rm \
    -v "$PWD:/local" \
    "openapitools/openapi-generator-cli:v${generator_version}" generate \
    -i "/local/openapi_specs/${spec}" \
    -g python \
    -o "/local/sdk/${client}" \
    --package-name "$client"
done

uv run python scripts/patch_api_version.py
uv run python scripts/patch_api_version.py --check
