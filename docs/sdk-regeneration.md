# SDK regeneration

The eight clients under `sdk/` are generated from the specifications under
`openapi_specs/`. Do not edit generated models or API modules by hand.

## Specification source

The specifications were exported from the Zero Friction developer portal on
2026-09-10. The portal exposes Azure API Management's data API at:

```text
https://zf-apim-heat-prd-int-we-001.data.azure-api.net
```

Each specification was retrieved from:

```text
/apis/{API_ID}?api-version=2022-04-01-preview&export=true
```

with this required request header:

```text
Accept: application/vnd.oai.openapi
```

The API IDs match the specification filenames: `Attachments-1-0`,
`Billing-1-0`, `Communication-1-0`, `Configuration-1-0`,
`Forecasting-1-0`, `Masterdata-1-0`, `Metering-1-0`, and
`RegionalRegulations-1-0`.

For example, refresh the Configuration specification with:

```bash
curl --fail --silent --show-error \
  --header 'Accept: application/vnd.oai.openapi' \
  'https://zf-apim-heat-prd-int-we-001.data.azure-api.net/apis/Configuration-1-0?api-version=2022-04-01-preview&export=true' \
  --output openapi_specs/Configuration-1-0.yaml
```

The checked-in files have trailing whitespace removed. Their SHA-256 hashes
are:

| Specification | SHA-256 |
| --- | --- |
| Attachments | `effeef83bd6eeebaf8e3b5b57f7a7d42a6c3404aedb51016137e002f377761f1` |
| Billing | `39885bb75a5010827ffaae9daea0758e08231bf4ed703544f2ca0b055d23d6c1` |
| Communication | `0f91a3533a1b80e82b4890ecafd24ae6884b62f8d3914ae9ad8c2df7d736ffc6` |
| Configuration | `a8fe1c335f7ed58031c6fed653b27a1ecdbefa67f47af89096ecf98fd591ea9f` |
| Forecasting | `07bba645bd9ccbcdc5b031123fbf7ba226aa5dcee3b69cff59e9c3f29b6baef1` |
| Masterdata | `bc85fb7015d1490f856878167e9977b8f1831aa74811d9820b58716be031a2be` |
| Metering | `a40322204f4dca1a011e72d5bb845324d05d1bf049491cb7976c007d418427bc` |
| RegionalRegulations | `bfa99915cafe8284b6bcb139d107905c10b25565a9a8c2189be693597f353948` |

Placeholder password and private-key values in vendor examples carry
detect-secrets allowlist comments; they contain the literal value `string`,
not credentials.

## Generate the clients

Docker, `rsync`, and `uv` are required. From the repository root, run:

```bash
./scripts/generate-sdk.sh
```

The script uses OpenAPI Generator 7.13.0 pinned by image digest, stages all
eight clients, applies the repository's API-version compatibility behavior,
normalizes generated text, and then replaces `sdk/` only after every client
has generated successfully.

The vendor Masterdata specification repeats the `Name` and `Id` query
parameters on the two bulk service-context filter operations. Generation
therefore skips OpenAPI Generator's validation for that client only. The
generator de-duplicates those parameters in the generated method signatures.

## Compatibility notes

The current vendor exports group operations under the `Default` tag. Generated
API modules are consequently exposed as `default_api` instead of the previous
resource-specific modules such as `contracts_api` and `customers_api`. This is
a breaking public API change for callers that use the generated clients or the
unified client's dynamically attached API attributes.

The refreshed schema also resolves two local workarounds:

- `CultureInfo` is now a string, so values such as `nl-NL` work without a
  generated-model patch.
- Customer lookup is now generated with the documented query parameter, and
  billing calculation parameter subtypes are present in the schema. Their
  runtime patches were removed.

The permissive country-code compatibility patch remains in
`zero_friction/patches/` because the vendor schema still publishes a closed
country-code enum.

No live API requests are part of generation or verification. Run the offline
checks with:

```bash
uv run --frozen pytest
uv run pre-commit run --all-files
```
