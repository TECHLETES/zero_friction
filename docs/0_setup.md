### 📄 `0_setup.md` - Project Setup Guide

> **👉 First time?** See [docs/quickstart.md](quickstart.md) for the fastest supported path from clone to working environment. This guide is the detailed reference for setup paths, prerequisites, and troubleshooting.

This guide helps you choose the right onboarding path and troubleshoot setup issues. This repository is a template intended to be copied into new projects, so pick whichever approach works best for your team.

Today, the documented host automation is Linux-first. Windows and macOS contributors should prefer the devcontainer workflow unless they are intentionally maintaining their own local setup outside this script.

## 🚀 Setup Path Selection

Choose the workflow that matches your platform and preferences.

---

## Windows: Devcontainer (Recommended)

Windows contributors should use the devcontainer workflow for the most consistent experience.

**Prerequisites:**
- Docker Desktop
- WSL2 enabled
- VS Code with the Dev Containers extension

**Steps:**
1. Clone the repository inside the WSL filesystem (e.g., `~/src`).
2. Open the folder in VS Code from WSL.
3. Run the `Dev Containers: Reopen in Container` command.
4. Wait for the post-create bootstrap to finish.

**Do not** run `./scripts/setup.sh` inside the devcontainer—the container bootstrap handles everything.

For detailed information about how the devcontainer works, customization options, and platform-specific setup, see [docs/7_devcontainers.md](7_devcontainers.md).

---

## Linux: Host Setup

Use this path when you want to work directly on a Linux host. If you are on macOS, use the devcontainer path above instead of relying on `./scripts/setup.sh`.

Open your terminal and run:

```bash
# 1. Clone the repository
git clone https://github.com/TECHLETES/{REPO_NAME}.git

# 2. Navigate into the project directory
cd {REPO_NAME}

# 3. Run the setup script
./scripts/setup.sh
```

The setup script handles the current Linux host bootstrap, including Python
environment setup, dependency installation with `uv`, pre-commit hook setup,
and bash-based direnv integration.

---

## 🛟 Quick Troubleshooting

<details>
<summary><b>Windows: Docker or VS Code setup questions</b></summary>

See [docs/7_devcontainers.md](7_devcontainers.md) for complete devcontainer
setup guidance, including Docker Desktop configuration and WSL filesystem recommendations.

</details>

<details>
<summary><b>Linux host setup fails or has warnings</b></summary>

The setup script auto-detects your package manager (apt-get, dnf, yum) and
installs missing dependencies. If it fails:

1. Check that you have `sudo` access.
2. Ensure Git and Python 3.12+ are installed.
3. Re-run `./scripts/setup.sh`—it is safe to run multiple times.

</details>

<details>
<summary><b>Linux host virtual environment corrupted</b></summary>

Delete the environment and let the script recreate it:

```bash
rm -rf .venv
./scripts/setup.sh
```

Or manually refresh with `uv sync`.

</details>

<details>
<summary><b>1Password CLI not available</b></summary>

The `op` command-line tool is optional for getting started. If you need secrets:

- See [docs/2_secret_management.md](2_secret_management.md) for setup steps.
- Or contact your team lead for your 1Password integration approach.

</details>

---

## ℹ️ What the Setup Script Does

The `./scripts/setup.sh` script automates:

1. **System requirements check** – Verifies Python 3.12+, Git, `uv`, `direnv`, and other required tools, installing missing packages with `apt-get`, `dnf`, or `yum` when possible
2. **Virtual environment and dependencies** – Materializes `.venv/`, runs `uv lock`, and runs `uv sync`
3. **Pre-commit hooks** – Installs Git hooks, runs `pre-commit autoupdate`, and runs `pre-commit run --all-files`
4. **Secrets baseline** – Creates `.secrets.baseline` with `detect-secrets`
5. **direnv configuration** – Appends the bash hook to `~/.bashrc` and runs `direnv allow` when `.envrc` exists
6. **System configuration** – Configures locales and, on `apt-get`-based Linux, installs Docker and Docker Compose if they are missing

After the script completes, your environment is ready to use. Activate the
virtual environment in new terminal sessions:

```bash
source .venv/bin/activate
```

Or use `direnv allow` to auto-activate when you enter the project directory. If you use a shell other than bash, add the appropriate `direnv` hook manually.

---

## Next Steps

- See [docs/1_usage.md](1_usage.md) for daily development workflows
- See [docs/2_secret_management.md](2_secret_management.md) for secret handling
- See [docs/7_devcontainers.md](7_devcontainers.md) for devcontainer details and customization
