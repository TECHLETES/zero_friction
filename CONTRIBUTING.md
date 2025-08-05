

# Contributing to python_basic_template (TECHLETES)

Thank you for your interest in contributing! This repository serves as the official Python project template for TECHLETES, a data & AI consultancy. All contributors are TECHLETES employees, and contributions should reflect our standards of professionalism, quality, and collaboration.


## Prerequisite: 1Password CLI Setup

Before starting, you must set up the 1Password CLI for secret management. This is required for all TECHLETES Python projects and for running the setup scripts.

### 0.1.1 Set-up 1Password (CLI)

1. **Download and activate 1Password Desktop**
   1. Download and install from here:
      [Download 1Password for Windows | 1Password](https://1password.com/downloads/windows)
   2. Log in with your account.
   3. Go to ‘Settings’ > ‘Security’ > Enable ‘Unlock with Windows Hello’
   4. Go to ‘Settings’ > ‘Developer’ > Enable ‘Integrate with 1Password CLI’.

2. **Set up 1Password CLI**
   1. Open Windows PowerShell and run:
      ```bash
      winget install 1password-cli
      ```
   2. In your file explorer, navigate to:
      `C:/Users/<username>/AppData/Local/Microsoft/WinGet/Packages/<1password_cli_package_id>/op.exe` and copy the absolute path to `op.exe`.
   3. Modify the path by replacing `C:/` with `/mnt/c/` and all backslashes with forward slashes. Your final path should look like:
      `/mnt/c/Users/thome/AppData/Local/Microsoft/WinGet/Packages/AgileBits.1Password.CLI_Microsoft.Winget.Source_8wekyb3d8bbwe/op.exe`
   4. In WSL, run:
      ```bash
      ln -s <path_from_previous_step> /usr/bin/op
      ```
   5. Test in WSL:
      ```bash
      op --version
      ```
      If you see a version number, the link was successful and you can access 1Password in WSL.



## Getting Started

1. **Clone the repository** (forking is not required for internal TECHLETES projects).
2. **Automatic setup (recommended):**
   After cloning, run the setup script to configure your environment:
   ```bash
   bash scripts/setup.sh
   ```
   This script will:
   - Check for Python 3.12+, pip, curl, and git
   - Create and activate a virtual environment
   - Install and lock all dependencies (prod & dev)
   - Set up pre-commit hooks
   - Check and configure system locale
   - Install and configure direnv (if available)
   - Initialize secret scanning baseline
   - Validate your environment and dependencies
   For a detailed breakdown or manual steps, see `docs/0_setup.md`.
3. **Set up pre-commit hooks** (required):
   ```bash
   pre-commit install
   ```


## Code Quality & Standards

- All code must pass pre-commit hooks (formatting, linting, type checks, secret scanning, etc.).
- Use type annotations wherever possible.
- Write clear, concise docstrings for public functions and classes.
- Keep functions small and focused.
- Follow TECHLETES best practices for code, security, and documentation.



## Making Changes

### 1. Create a new branch (required)

Use the provided script to create a new feature, fix, or docs branch:

```bash
./scripts/new-branch.sh feature "add user dashboard"
# or for a bugfix:
./scripts/new-branch.sh fix "sidebar mobile issue"
```

This script will:
- Clean up merged local branches
- Prune remote-tracking branches
- Create a new branch with a safe, descriptive name
- Switch you to the new branch and print next steps

**Branch types supported:** feature, fix, docs, ui, devops

### 2. Write tests for new features or bugfixes

### 3. Run all checks locally

```bash
pre-commit run --all-files
pytest
```

### 4. Update documentation if your change affects usage or APIs



## Commit Messages

- Use clear, descriptive commit messages.
- Reference issues or pull requests when relevant.
- For new branches, follow the script's suggestion:
   - `feature: add user dashboard`
   - `fix: sidebar mobile issue`
- Follow any additional TECHLETES commit or PR guidelines as required.


## Pull Requests

- Ensure your branch is up to date with `main`.
- All checks must pass before merging.
- Be responsive to code review feedback.
- Pull requests should be reviewed by at least one other TECHLETES team member.



## Reporting Issues

- Use the GitHub Issues page to report bugs or request features.
- Provide as much detail as possible, including steps to reproduce.
- For internal issues, you may also escalate via TECHLETES channels as appropriate.

---

## Reference: Project Setup Steps (Summary)

For full details, see `docs/0_setup.md`. Key steps include:

1. **System Requirements**: Python 3.12+, pip, curl, git
2. **Virtual Environment**: Remove old `venv`, create and activate new one
3. **Dependency Management**: Use `scripts/dependency.sh` to install prod/dev dependencies and lock files
4. **Locale Configuration**: Ensure `en_US.UTF-8` is available
5. **direnv Setup**: (Optional) For automatic environment variable loading
6. **Pre-commit Hooks**: Install and update hooks, run all checks
7. **Secret Management**: Set up 1Password CLI and initialize `detect-secrets` baseline
8. **Tool Verification**: Confirm Black, Ruff, Mypy, Beartype, and pytest are installed
9. **Project Validation**: Import modules, syntax check all Python files, verify dependencies

All of these are automated by `scripts/setup.sh`.


## Workplace Standards

- Be respectful and constructive in all communications with TECHLETES colleagues.
- Follow the [TECHLETES Code of Conduct](CODE_OF_CONDUCT.md).

---

Thank you for helping make this project better!
