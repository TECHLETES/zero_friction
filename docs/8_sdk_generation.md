# SDK generation and release workflow

The clients under `sdk/` are generated from the Zero Friction OpenAPI specifications in `openapi_specs/`. Regeneration must be reproducible, reviewed as generated code, and tested against dependent projects before it is merged into `main`.

## Versioning baseline

The current SDK on `main` is the **v1 baseline** and should be tagged `v1` before replacing the generated clients with a newer Zero Friction API snapshot.

The next full regeneration from newer OpenAPI specifications is intended to become **v1.1** once it has been validated in dependent projects and merged into `main`.

Do not move an existing release tag to newer code. A release tag identifies the exact SDK state that downstream projects were tested against.

## Source of truth

The repository contains eight OpenAPI specifications and eight generated Python clients:

| OpenAPI specification | Generated client | Python package |
| --- | --- | --- |
| `Attachments-1-0.yaml` | `sdk/attachments_client` | `attachments_client` |
| `Billing-1-0.yaml` | `sdk/billing_client` | `billing_client` |
| `Communication-1-0.yaml` | `sdk/communication_client` | `communication_client` |
| `Configuration-1-0.yaml` | `sdk/configuration_client` | `configuration_client` |
| `Forecasting-1-0.yaml` | `sdk/forecasting_client` | `forecasting_client` |
| `Masterdata-1-0.yaml` | `sdk/masterdata_client` | `masterdata_client` |
| `Metering-1-0.yaml` | `sdk/metering_client` | `metering_client` |
| `RegionalRegulations-1-0.yaml` | `sdk/regionalregulations_client` | `regionalregulations_client` |

The version in the OpenAPI `info.version` field is not sufficient to identify whether Zero Friction changed the specification. Zero Friction can publish changed specifications while retaining the same API version number. Always treat the downloaded YAML files themselves as the source snapshot.

## Generator version

Use the same OpenAPI Generator version as the current generated SDK unless a generator upgrade is an explicit part of the change. The current clients were generated with OpenAPI Generator `7.13.0`.

Keeping the generator version fixed prevents generator-template changes from being mixed with actual API-specification changes.

## Branch-first workflow

Never regenerate all clients directly on `main`.

Create a dedicated branch from the current `main` first:

```bash
git switch main
git pull
git switch -c chore/regenerate-sdk-v1.1
```

Before changing the specifications, ensure the current `main` commit that represents the existing SDK has been tagged as `v1`.

Then update the relevant files under `openapi_specs/` with the newly downloaded specifications from the Zero Friction developer documentation.

Commit the specification files and regenerated clients together so the generated code can always be traced back to the exact specification snapshot that produced it.

## Regenerating one client

Run OpenAPI Generator from the repository root. Docker is preferred because it pins the generator version without requiring a local Java/OpenAPI Generator installation.

For example, to regenerate the Configuration client:

```bash
docker run --rm \
  -v "$PWD:/local" \
  openapitools/openapi-generator-cli:v7.13.0 generate \
  -i /local/openapi_specs/Configuration-1-0.yaml \
  -g python \
  -o /local/sdk/configuration_client \
  --package-name configuration_client
```

The output directory is intentionally the existing generated client directory. OpenAPI Generator will update generated source files, models, API classes, documentation and generator metadata in place.

## Regenerating the complete SDK

For a complete Zero Friction API refresh, regenerate all eight clients from the repository root:

```bash
set -euo pipefail

GENERATOR_VERSION="7.13.0"

while IFS='|' read -r spec output package; do
  docker run --rm \
    -v "$PWD:/local" \
    "openapitools/openapi-generator-cli:v${GENERATOR_VERSION}" generate \
    -i "/local/openapi_specs/${spec}" \
    -g python \
    -o "/local/sdk/${output}" \
    --package-name "${package}"
done <<'EOF'
Attachments-1-0.yaml|attachments_client|attachments_client
Billing-1-0.yaml|billing_client|billing_client
Communication-1-0.yaml|communication_client|communication_client
Configuration-1-0.yaml|configuration_client|configuration_client
Forecasting-1-0.yaml|forecasting_client|forecasting_client
Masterdata-1-0.yaml|masterdata_client|masterdata_client
Metering-1-0.yaml|metering_client|metering_client
RegionalRegulations-1-0.yaml|regionalregulations_client|regionalregulations_client
EOF
```

After generation, inspect the result before making any manual compatibility changes:

```bash
git status
git diff --stat
git diff
```

Pay particular attention to:

- renamed or removed generated models;
- changed method signatures;
- newly required parameters;
- removed fields or enum members;
- changed response types;
- changes to authentication/header parameters;
- generated file additions and deletions.

Do not edit generated code merely to make the diff smaller. If compatibility code is needed, prefer implementing it in the hand-maintained `zero_friction/` package or document explicitly why a generated file must be patched.

## Validate the SDK branch

Run the repository checks after regeneration:

```bash
uv lock
uv sync
uv run pre-commit run --all-files
uv run pytest
```

Generated clients are part of the product even when root lint/type-check settings exclude some generated files. A successful generation is not enough: the unified `zero_friction/` package and repository tests must still work.

## Test dependent projects before merge

The regeneration branch is the integration target until all known consumers have been checked.

Point a dependent project temporarily at the branch instead of `main`, for example:

```text
git+https://github.com/TECHLETES/zero_friction.git@chore/regenerate-sdk-v1.1
```

For every dependent repository:

1. install the SDK from the regeneration branch;
2. run its full test suite and relevant integration/smoke tests;
3. search for imports of renamed or removed generated models;
4. check calls whose generated signatures changed;
5. fix the dependent repository or add deliberate compatibility support in `zero_friction`;
6. record that the repository has been validated against the candidate SDK.

Do not merge the SDK regeneration into `main` until the dependent projects that rely on it have been validated or an explicit migration plan exists for them.

## Pull request and release

Once the SDK branch and dependent projects are validated:

1. make sure the branch contains the new OpenAPI specifications and all regenerated SDK output;
2. run the repository checks again;
3. open a pull request from the regeneration branch to `main`;
4. describe API additions, breaking SDK-surface changes and downstream validation in the PR;
5. merge only after review and CI pass;
6. tag the merged `main` commit as `v1.1`.

The intended release sequence is therefore:

```text
current main ------------------------------> tag: v1
       \
        chore/regenerate-sdk-v1.1
          ├── update OpenAPI specs
          ├── regenerate all SDK clients
          ├── validate zero_friction
          ├── validate dependent repos
          └── PR -> main -------------------> tag: v1.1
```

## Installing a stable or candidate version

Stable consumers should prefer a release tag instead of tracking `main`:

```bash
pip install "git+https://github.com/TECHLETES/zero_friction.git@v1"
```

After the regenerated SDK is merged and tagged:

```bash
pip install "git+https://github.com/TECHLETES/zero_friction.git@v1.1"
```

During compatibility testing only, install from the regeneration branch:

```bash
pip install "git+https://github.com/TECHLETES/zero_friction.git@chore/regenerate-sdk-v1.1"
```

Using tags for production/dependent projects prevents an unrelated future commit to `main` from silently changing the SDK version being installed.
