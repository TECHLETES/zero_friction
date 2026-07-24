![Test Coverage](./coverage.svg)

# Python Template (TECHLETES)

A production-ready Python project template for TECHLETES with reproducible
`uv` dependencies, secure secret handling, type checking, testing, and
pre-commit quality gates.

## Quick start

Development happens inside the repository’s devcontainer. You only need Docker,
VS Code with the Dev Containers extension, and Git. Windows contributors also
need WSL2 with Docker Desktop integration.

```bash
git clone <repository-url>
cd <repository-folder>
code .
```

Run **Dev Containers: Reopen in Container** in VS Code and wait for the
bootstrap to finish. It runs `uv sync`, creates `.venv`, and installs the
pre-commit hooks. No host Python setup, manual activation, or setup script is
required.

Verify the container workspace:

```bash
uv run pytest
uv run pre-commit run --all-files
```

See [docs/quickstart.md](docs/quickstart.md) and [docs/0_setup.md](docs/0_setup.md)
for the complete setup and recovery workflow.

## Essential rules

- Never put secrets in code, notebooks, or `.env` files. Use
  `from utils.secrets import get_secret` for 1Password-backed values.
- Never use `pip install`. Declare dependencies in `pyproject.toml`, then run
  `uv lock` and `uv sync` inside the devcontainer.
- Add type hints to every function and method.
- Run pre-commit before committing; hooks are installed automatically by the
  container bootstrap.

## Features

- Python 3.12 and `uv` in a reproducible devcontainer
- Locked runtime and development dependencies
- Black, Ruff, mypy, beartype, pytest, coverage, Bandit, and pip-audit
- 1Password CLI integration and detect-secrets scanning
- Jupyter support with notebook output stripping
- GitHub Actions checks, including a devcontainer smoke test

## Repository structure

```text
.devcontainer/       Container image, configuration, and bootstrap scripts
.github/             GitHub Actions and repository templates
docs/                Setup, usage, quality, secrets, and container guides
example/             Example code and notebooks
scripts/             Repository helpers and hook scripts
tests/               Test suite
utils/               Shared utility modules
pyproject.toml       Metadata, dependencies, and tool configuration
uv.lock              Generated dependency lock file
```

## Common commands

Run all commands from the VS Code terminal attached to the devcontainer:

```bash
uv run pytest
uv run pytest --cov
uv run black .
uv run ruff check . --fix
uv run mypy . --config-file=pyproject.toml
uv run pre-commit run --all-files
```

After changing dependencies:

```bash
uv lock
uv sync
```

After changing `.devcontainer/Dockerfile` or `devcontainer.json`, use **Dev
Containers: Rebuild Container**. Use **Rebuild Container Without Cache** if the
image or environment remains stale.

## Documentation

- [Quickstart](docs/quickstart.md)
- [Setup and recovery](docs/0_setup.md)
- [Daily usage](docs/1_usage.md)
- [Secret management](docs/2_secret_management.md)
- [Dependency management](docs/3_dependency_management.md)
- [Code quality](docs/4_code_quality.md)
- [Pre-commit hooks](docs/5_pre_commit_hooks.md)
- [Pre-commit troubleshooting](docs/6_pre_commit_troubleshooting.md)
- [Devcontainer details](docs/7_devcontainers.md)
- [Contributing](CONTRIBUTING.md)

## Template bootstrap

Repositories created from this template must first update `AGENTS.md` and
`README.md` with their actual project context before application feature work.
Keep the general security, dependency, typing, quality, and devcontainer rules
unless the derived repository documents an intentional replacement.

## License

This project is licensed under the MIT License; see [LICENSE](LICENSE).
