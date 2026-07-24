# Zero Friction Unified Python SDK

This repository provides one installable Python package for the Zero Friction
API suite. It combines eight generated API clients under `sdk/` with the
hand-maintained `zero_friction/` package, which provides shared configuration,
authentication, and a unified client surface.

## Installation

Install the SDK directly from GitHub:

```bash
pip install "git+https://github.com/TECHLETES/zero_friction.git@main"
```

For repository development, use the supported uv workflow:

```bash
uv sync
cp .env.template .env
uv run pre-commit install --install-hooks
```

Do not commit `.env` or real credentials. The SDK reads these environment
variables for authentication:

```text
ZF_API_KEY=
ZF_TENANT_ID=
ZF_ORG_ID=
ZF_CLIENT_ID=
ZF_CLIENT_SECRET=
```

## Usage

```python
from zero_friction.core.config import ZeroFrictionConfig
from zero_friction.core.sdk_client import SDKClient

config = ZeroFrictionConfig()
sdk = SDKClient(config=config)

contract = sdk.masterdata_client.contracts_api.get_contracts_contractuuid(
    contractuuid="fc77b9c6-42bc-4fe7-b0a2-0f0309449a98",
    **config.as_kwargs(),
)
print(contract)
```

## Repository layout

```text
sdk/                 Generated, independently installable API clients
zero_friction/       Unified client and shared SDK logic
tests/               Repository tests
scripts/             Adoption and pre-commit helper scripts
.devcontainer/       Reproducible development container setup
.github/workflows/   CI, labeling, and staging checks
```

## Development checks

Dependencies are declared in `pyproject.toml` and locked in `uv.lock`:

```bash
uv lock
uv sync
uv run pre-commit run --all-files
uv run pytest
```

The template tooling also provides Black, Ruff, mypy, Bandit, detect-secrets,
and pip-audit. Generated clients are preserved as product code and excluded
from root-package lint/type-check coverage settings.

See `docs/quickstart.md` and the documents under `docs/` for the development,
secret-management, dependency, quality, and devcontainer workflows.
