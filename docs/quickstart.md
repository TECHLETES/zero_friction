# Quickstart

This page is for developers who want the fastest supported path from clone to a working environment.
Use it to choose a setup path, get the template bootstrapped, and verify that day-one commands work. For deeper setup details, customization, or secret-backed workflows, use the linked guides.

## Choose the fast path

Use the devcontainer path if your team includes Windows users, macOS users, or works across mixed operating systems. Use the host path if you are on Linux and want to work directly on your machine.

| If this sounds like you | Use this path |
| --- | --- |
| Windows, macOS, or a mixed Windows/macOS/Linux team | Devcontainer |
| Linux and you want local tools on your machine | Host setup |

## Devcontainer fast path

Choose this path for the most consistent setup across machines.

### What you need

- Docker Desktop
- WSL2 if you are on Windows
- VS Code with the Dev Containers extension

### Start

```bash
git clone <your-new-repo-url>
cd <your-new-repo-folder>
```

Then:

1. If you are on Windows, keep the repository in the WSL filesystem, such as `~/src`, not under `/mnt/c/...`.
2. Open the folder in VS Code.
3. Run `Dev Containers: Reopen in Container`.
4. Wait for the container bootstrap to finish.

The container bootstrap runs the project sync for you. Do not run `./scripts/setup.sh` inside the devcontainer.

### Optional: install the shared Copilot agents

If you want the repository's `Orchestrator`, `Planner`, `Coder`, and `Designer`
agents available in Copilot, run:

```bash
./scripts/install-copilot-agents.sh
```

Run that command in the same environment where VS Code is attached. For
example, if you are using Remote WSL or a devcontainer, run it there so the
files land in that environment's `~/.copilot/agents` directory.

## Host fast path

Choose this path if you are on Linux and want to work directly on your machine.

### What you need

- Git
- Python 3.12+
- Bash
- A Linux host with `apt-get`, `dnf`, or `yum` available if setup needs to install missing tools
- A terminal with `sudo` access if packages need to be installed during setup

### Start

```bash
git clone <your-new-repo-url>
cd <your-new-repo-folder>
./scripts/setup.sh
```

The setup script is Linux-oriented. It bootstraps the local environment with `uv`, installs pre-commit hooks, and configures bash-based shell tooling. It may also install missing system packages during setup.

If you are on macOS, use the devcontainer path instead of relying on `./scripts/setup.sh`.

If your shell is not auto-activating the environment after setup, open a new terminal or run:

```bash
source .venv/bin/activate
```

### Optional: install the shared Copilot agents

If you want the repository's shared Copilot agents in this environment, run:

```bash
./scripts/install-copilot-agents.sh
```

The script copies the repo versions into `~/.copilot/agents` by default. Use
`--link` if you prefer symlinks while iterating on the agent definitions.

## First-success checks

Run these after either setup path completes.

```bash
uv --version
.venv/bin/python --version
uv run python -c "import utils.secrets; print('environment ready')"
```

You are in a good state if:

- `uv` responds normally
- the project Python interpreter exists in `.venv`
- the import check prints `environment ready`

## First-day commands

These are the first commands worth running once the environment is ready.

```bash
uv run pytest
uv run pre-commit run --all-files
uv run mypy . --config-file=pyproject.toml
```

## Secrets boundary

1Password is not required to clone the template, bootstrap the environment, or run the basic quality checks above.
You only need 1Password CLI access when you start working on flows that call secret-backed code, such as `get_secret(...)`.

## Read next

- Full setup guide: [docs/0_setup.md](0_setup.md)
- Devcontainer details and troubleshooting: [docs/7_devcontainers.md](7_devcontainers.md)
- Secret-backed workflows: [docs/2_secret_management.md](2_secret_management.md)
- Daily development workflow: [docs/1_usage.md](1_usage.md)
