# Quickstart

This template uses a devcontainer for all development. The container is the
single supported place to run project commands.

## Prerequisites

- Docker Desktop, or Docker Engine with Docker Compose
- VS Code and the Dev Containers extension
- Git

Windows contributors also need WSL2 and Docker Desktop WSL integration. Store
the repository in the WSL filesystem, not under `/mnt/c/...`.

## Start

```bash
git clone <repository-url>
cd <repository-folder>
code .
```

Run **Dev Containers: Reopen in Container** from the VS Code command palette.
Wait for the image build and post-create bootstrap to complete.

The bootstrap runs `uv sync`, installs pre-commit hooks, and prepares the
repository-local `.venv`. No host Python installation, manual activation, or
setup script is required.

## First-success checks

Run these in the devcontainer terminal:

```bash
uv --version
.venv/bin/python --version
uv run python -c "import utils.secrets; print('environment ready')"
uv run pytest
```

## First-day commands

```bash
uv run pre-commit run --all-files
uv run mypy . --config-file=pyproject.toml
uv run pytest
```

## Optional shared Copilot agents

Run this inside the attached devcontainer if you need the repository’s shared
agents:

```bash
./scripts/install-copilot-agents.sh
```

## Read next

- [Full setup guide](0_setup.md)
- [Daily development workflow](1_usage.md)
- [Secret-backed workflows](2_secret_management.md)
- [Dependency management](3_dependency_management.md)
- [Devcontainer details](7_devcontainers.md)
