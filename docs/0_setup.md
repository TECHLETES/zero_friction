# Setup: Open the Devcontainer

The devcontainer is the only supported development setup for this template.
The container provides Python 3.12, `uv`, Docker tooling, the project
dependencies, pre-commit, and the configured VS Code extensions.

## Prerequisites

- Docker Desktop, or Docker Engine with a working Docker Compose installation
- VS Code
- The VS Code Dev Containers extension
- Git

On Windows, enable WSL2 and Docker Desktop WSL integration. Keep the
repository inside the WSL filesystem, such as `~/src`, rather than under
`/mnt/c/...` for better bind-mount performance.

## First setup

Clone the repository, open it in VS Code, and reopen it in the container:

```bash
git clone <repository-url>
cd <repository-folder>
code .
```

In VS Code, run **Dev Containers: Reopen in Container**. The first build can
take a few minutes. Wait for the `post-create` step to finish before running
commands in the integrated terminal.

The container bootstrap automatically:

1. Creates `.env` from `.env.template` when the project provides one.
2. Runs `uv sync` to create or refresh the repository `.venv`.
3. Installs the pre-commit hooks.
4. Configures the container-local Git identity from the mounted host Git config.
5. Checks for optional 1Password CLI and notebook support.

No host Python, `uv`, virtual environment, `direnv`, or manual setup script is
required. Do not run `scripts/setup.sh` for onboarding.

## Verify the workspace

Run these commands in the terminal attached to the devcontainer:

```bash
uv --version
.venv/bin/python --version
uv run python -c "import utils.secrets; print('environment ready')"
uv run pytest
```

VS Code should select `.venv/bin/python` as the project interpreter. The
container also installs the configured Python, Docker, YAML, and notebook
extensions automatically.

## Rebuild or refresh

Rebuild after changing `.devcontainer/Dockerfile` or
`.devcontainer/devcontainer.json`:

1. Run **Dev Containers: Rebuild Container** in VS Code.
2. Wait for `post-create` to finish.

After changing only `pyproject.toml`, run this inside the container:

```bash
uv lock
uv sync
```

If the repository environment is stale or corrupted, use **Dev Containers:
Rebuild Container Without Cache**. The source tree and Git history are mounted
from the repository and are not part of the container image.

## Troubleshooting

### The container will not build

Confirm Docker is running and that VS Code can access the Docker daemon. On
Windows, confirm WSL2 and Docker Desktop integration are enabled, and that the
repository is stored inside WSL rather than `/mnt/c`.

### Bootstrap fails during `uv sync`

Read the first error in the post-create output. Check that `pyproject.toml` and
`uv.lock` are present and consistent, then run:

```bash
uv lock
uv sync
```

### Pre-commit is missing

Run the following in the container terminal:

```bash
uv sync
uv run pre-commit install --install-hooks
```

### Secrets or 1Password are unavailable

Basic setup does not require 1Password. Follow
[Secret Management](2_secret_management.md) only when working on a
secret-backed flow.

## Next steps

- [Daily usage](1_usage.md)
- [Dependency management](3_dependency_management.md)
- [Code quality](4_code_quality.md)
- [Devcontainer details](7_devcontainers.md)
