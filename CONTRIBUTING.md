# Contributing to python_template

This repository is the TECHLETES Python project template. All contributors
work from the devcontainer so the Python version, tools, dependencies, and
quality checks stay consistent.

## Getting started

Install Docker, VS Code with the Dev Containers extension, and Git. Windows
contributors should also enable WSL2 and Docker Desktop WSL integration.
Clone the repository, open it in VS Code, and run **Dev Containers: Reopen in
Container**. Wait for the image build and post-create bootstrap to finish.

The bootstrap runs `uv sync`, creates the project `.venv`, and installs
pre-commit hooks. Do not run `scripts/setup.sh`, install Python or `uv` on the
host, or activate `.venv` manually.

For details, see [docs/0_setup.md](docs/0_setup.md) and
[docs/7_devcontainers.md](docs/7_devcontainers.md).

## Secrets

Do not commit secrets or plaintext credentials. The devcontainer includes the
repository’s supported tooling for secret-backed development; 1Password is
only needed when a workflow calls `get_secret()`.

See [docs/2_secret_management.md](docs/2_secret_management.md) for the safe
usage pattern and CI guidance.

## Code quality

Run commands in the terminal attached to the devcontainer:

```bash
uv run pre-commit run --all-files
uv run pytest
```

Use type annotations, focused functions, and concise docstrings. Update the
documentation when a change affects setup, usage, or public APIs.

## Making changes

Create a branch with the repository helper:

```bash
./scripts/new-branch.sh feature "describe the change"
./scripts/new-branch.sh fix "describe the bug"
```

Write tests for new behavior or bug fixes. Before opening a pull request, run:

```bash
uv run pre-commit run --all-files
uv run pytest
```

Commit with a clear message. Pre-commit runs automatically and may modify files;
stage those changes and commit again if needed.

## SDK generation

Changes to the Zero Friction OpenAPI specifications or generated clients follow a separate branch-first compatibility workflow. Do not regenerate SDK clients directly on `main`.

When updating the SDK:

- update the OpenAPI specification snapshots under `openapi_specs/`;
- regenerate the affected clients under `sdk/` with the pinned OpenAPI Generator version;
- inspect generated model, method-signature and response-type changes;
- run the Zero Friction SDK test suite;
- validate dependent repositories against the regeneration branch before merge;
- merge through a pull request and create the planned release tag only after downstream validation succeeds.

See [docs/8_sdk_generation.md](docs/8_sdk_generation.md) for the complete commands, branch workflow, compatibility-testing process and release/versioning convention.

## Dependencies

Edit `pyproject.toml` from the devcontainer, then update and commit the lock
file:

```bash
uv lock
uv sync
```

Never run `pip install` or edit `uv.lock` by hand.

## Pull requests

- Keep changes focused and explain the verification performed.
- Ensure all CI checks pass, including the devcontainer smoke check.
- Ask for review from at least one TECHLETES team member.

See the [pull request template](.github/pull_request_template.md) for the full
checklist.
