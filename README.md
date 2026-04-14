
![Test Coverage](./coverage.svg)

# Python Basic Template (TECHLETES)

A modern, production-ready Python project template for TECHLETES, a data & AI consultancy. Includes hybrid dependency management, secure secret management, and comprehensive development tooling for internal use by TECHLETES employees.

## READ THIS FIRST!

*This section lists the essential rules for using this template. Read it before you start.*

### Secrets and environment
* **Never** put secrets in code, notebooks, or  `.env` files!
* Load secrets using 1Password with the helper in code
        from utils.secrets import get_secret
        API_KEY = get_secret("op://<vault>/<item>/<field>")
* See [docs/2_secret_management.md](docs/2_secret_management.md) for more info on managing secrets.

### Dependencies
* **Do not** run `pip install` manually in the terminal!
  Why: it bypasses the lock file and creates inconsistencies across environments
* Always declare packages in `pyproject.toml` only
* Use `uv sync` to install dependencies from the lock file
* Common commands:
  - First time setup: `uv sync`
  - Install deps: `uv sync`
  - Add a package: Edit `pyproject.toml`, then run `uv lock && uv sync`
* The lock file (`uv.lock`) ensures everyone uses the same versions

### Coding
* Prefer small functions and clear modules so code is easy to test and reuse
* Use type hints to show expected inputs and outputs
  Example
  ```
        def add(a: int, b: int) -> int:
            return a + b
  ```
  Why: your editor can catch mistakes early and mypy can check types automatically
* Put shared helpers in utils
* Use jupyter notebooks only for small tests / development.

### Git and commits
* Pre commit is a tool that runs checks before every commit to keep code safe and consistent.
* **Important:** The pre-commit checks require certain packages that are installed in the virtual environment when you setup this repo. Therefore, you should **always commit while the virtual environment is active**.
* Your commit can be blocked if a check fails. This is normal and protects the repo.
* **Always check if your changes have been committed and pushed successfully!**
* You can also run the pre-commit checks manually on all files before committing, using:
      `pre-commit run --all-files`
* If a pre commit check fails and you are stuck, see the troubleshooting section in

## 🚀 Quick Start

**For the fastest supported setup path from clone to working environment, see [docs/quickstart.md](docs/quickstart.md).**

The quickstart guide covers:
- Choosing between devcontainer (recommended for Windows, macOS, and mixed-OS teams) and host setup (Linux)
- Step-by-step bootstrap for each path
- First-success verification checks
- First-day commands to run

Detailed setup and customization guides are linked in the [📚 Documentation](#-documentation) section.

## 📋 Features

### 🔧 **Modern Dependency Management**
- **uv-powered**: Fast, reliable dependency resolution and installation
- **Reproducible builds** with `uv.lock` lockfile
- **Single source of truth** in `pyproject.toml`
- **Simple, clear workflow** - no hash verification hassles

### 🔐 **Secret Management**
- **1Password CLI integration** for secure secret handling
- **detect-secrets** for preventing secrets in git
- **Environment variable management** with direnv


### 🛠️ **Development Tools**
- **Code formatting**: Black
- **Linting & import sorting**: Ruff (replaces flake8 and pyupgrade)
- **Type checking**: mypy & beartype
- **Testing**: pytest with coverage
- **Pre-commit hooks** for code quality
- **Jupyter notebook support** with nbstripout and `ipykernel`
- **Shared Copilot agents** versioned in the repo for optional install into VS Code/Copilot

### 📦 **Project Structure**
```
python_basic_template/
├── .copilot/
│   └── agents/                     # Shared Copilot agent definitions for optional install
├── .devcontainer/
│   ├── Dockerfile                  # Devcontainer image definition
│   ├── devcontainer.json           # VS Code devcontainer configuration
│   └── post-create.sh              # Container bootstrap commands
├── .vscode/
│   └── extensions.json             # Recommended VS Code extensions
├── .dockerignore                   # Docker build context exclusions
├── .github/
│   └── workflows/                  # GitHub Actions workflows
├── docs/                           # Documentation (setup, secrets, dependencies, quality, containers)
│   ├── quickstart.md               # ⚡ Fast path from clone to working environment
│   ├── 0_setup.md
│   ├── 1_usage.md
│   ├── 2_secret_management.md
│   ├── 3_dependency_management.md
│   ├── 4_code_quality.md
│   ├── 5_pre_commit_hooks.md
│   ├── 6_pre_commit_troubleshooting.md
│   ├── 7_devcontainers.md
│   └── progress.md
├── example/                        # Example code and notebooks
│   ├── __init__.py
│   ├── using_secrets.py
│   └── using_secrets.ipynb
├── scripts/                        # Setup and utility scripts
│   ├── setup.sh
│   ├── install-copilot-agents.sh   # Installs repo-shared Copilot agents into ~/.copilot/agents
│   ├── run-pip-audit.sh            # pip-audit wrapper used in hooks and CI
│   ├── new-branch.sh
│   └── hooks/
│       ├── black-autoformat.sh
│       ├── nbstripout-autoadd.sh
│       ├── precommit_pytest.sh
│       └── verify-lockfile.sh
├── utils/                          # Utility modules
│   ├── __init__.py
│   └── secrets.py
├── tests/                          # Test directory
├── pyproject.toml                  # Project config & dependencies (single source of truth)
├── uv.lock                         # Locked dependency versions (auto-generated)
├── .pre-commit-config.yaml         # Pre-commit hooks config
├── .envrc                          # direnv environment config
├── .secrets.baseline               # Secret detection baseline
├── CODE_OF_CONDUCT.md              # Contributor code of conduct
├── CONTRIBUTING.md                 # Contribution guidelines
└── README.md                       # Project overview (this file)
```

## 🏗️ Dependency Management with uv

This project uses **uv** for fast, reliable dependency management. uv provides a single-file lock format and unified workflow for all dependency tasks.

After initial setup (see [quickstart.md](docs/quickstart.md)), use these workflows for day-to-day dependency management.

### Dependency Layers

Dependencies are organized into three logical groups:

| Layer | Location | Purpose | Installed With |
|-------|----------|---------|-----------------|
| **Core** | `dependencies` | Essential runtime packages | `uv sync` |
| **Extra** | `[dependency-groups].extra` | Optional production features | `uv sync --group extra` |
| **Dev** | `[dependency-groups].dev` | Development and testing tools | `uv sync` (default) |

**Example structure in `pyproject.toml`:**

```toml
# Core dependencies - Always installed
dependencies = [
    "flask>=2.2.0,<3.0.0",
    "requests",
    "sqlalchemy",
]

[dependency-groups]
# Extra production features
extra = [
    "redis",
    "celery",
]

# Development tools
dev = [
    "pytest>=7.0",
    "black",
    "mypy",
    "pre-commit",
]
```

### Common Workflows

**Install all dependencies (development setup):**
```bash
uv sync
```

**Install production dependencies only:**
```bash
uv sync --no-dev
```

**Update dependencies (patch + minor versions only):**
```bash
uv lock
uv sync
```

**Update dependencies (allow major version updates):**
```bash
uv lock --upgrade
uv sync
```

**Update a specific package:**
```bash
# Edit pyproject.toml to the version constraint you want, then:
uv lock
uv sync
```

### Lock File

The `uv.lock` file contains:
- All direct and transitive dependencies
- Pinned versions ensuring reproducibility
- Python version compatibility info

**Always commit `uv.lock` to version control** to ensure consistent environments across team members and CI/CD.

### Benefits Over pip-tools

- ⚡ **Much faster** dependency resolution (10-100x faster)
- 📝 **Simpler lock format** - one file (`uv.lock`), human-readable
- 🔄 **Unified workflow** - one tool (`uv`) for all dependency tasks
- 🛡️ **Better error messages** - clearer dependency conflict reporting
- 🚀 **Modern Python packaging** - supports PEP 508, PEP 517, PEP 660
- 🔒 **Built-in security** - integrated vulnerability scanning with `uv pip audit`

**📖 Detailed guide**: [docs/3_dependency_management.md](docs/3_dependency_management.md)

## 🔐 Secret Management

Secure secret handling with 1Password CLI integration:

- **Environment variables** loaded via direnv
- **1Password CLI** for secure secret retrieval
- **detect-secrets** prevents accidental commits
- **Example usage** in [example/using_secrets.py](example/using_secrets.py)

**📖 Detailed guide**: [docs/2_secret_management.md](docs/2_secret_management.md)

## 🛠️ Development Workflow

### Setup Development Environment

```bash
# Linux host setup
./scripts/setup.sh
```

Use [docs/quickstart.md](docs/quickstart.md) to choose between the devcontainer path and the Linux host setup path.

**For detailed setup guidance see**: [docs/0_setup.md](docs/0_setup.md)

### Code Quality

```bash
# Typing check
mypy .

# Format code
black .

# Lint and fix code
ruff check . --fix
mypy .

# Run tests
pytest

# Run all pre-commit checks
pre-commit run --all-files
```

## 🧪 Testing

Run tests with pytest:

```bash
# Run all tests
pytest

# Run with coverage
pytest --cov

# Run specific test
pytest tests/test_specific.py
```

## 📝 Configuration

### Key Configuration Files

| File | Purpose |
|------|---------|
| `pyproject.toml` | Project metadata, all dependencies, tool config |
| `uv.lock` | Locked dependency versions (auto-generated by uv) |
| `.pre-commit-config.yaml` | Pre-commit hooks configuration |
| `.envrc` | Environment variables (direnv) |
| `.secrets.baseline` | Secret detection baseline |

### Tool Configuration

All development tools are configured in `pyproject.toml`:
- **Black**: Code formatting (88 char line length)
- **ruff**: Sorting, linting, formatting (replaces flake8 and pyupgrade)
- **pytest**: Test configuration with coverage
- **mypy**: Type checking
- **beartype**: Type checking at runtime (more extensive then mypy)

## 🚀 Using This Template

### For New Projects

1. **Use this template** on GitHub or clone it
2. **Update project metadata** in `pyproject.toml`:
   - Change `name`, `description`, `authors`
   - Update repository URLs
3. **Bootstrap your environment** with [docs/quickstart.md](docs/quickstart.md)
4. **Optionally install the shared Copilot agents** with `./scripts/install-copilot-agents.sh`
5. **Start coding**!

### Customization

- **Add your production dependencies** to `pyproject.toml`
- **Modify tool configurations** in `pyproject.toml`
- **Update documentation** in `docs/`
- **Add your modules** alongside `utils/`

## 📚 Documentation

**Start here:**
- **[Quickstart](docs/quickstart.md)** - Fastest path from clone to working environment

**Detailed guides:**
0. **[Setup](docs/0_setup.md)** - Full guide to setup the development environment
1. **[Usage](docs/1_usage.md)** - Guide for daily usage of this repository
2. **[Secret Management](docs/2_secret_management.md)** - Secure secret handling guide
3. **[Dependency Management](docs/3_dependency_management.md)** - Detailed dependency workflow
4. **[Code Quality](docs/4_code_quality.md)** - Rules and guidelines on code quality and how it is enforced
5. **[Pre Commit Hooks](docs/5_pre_commit_hooks.md)** - Pre commit hooks to ensure safety and quality
6. **[Devcontainers](docs/7_devcontainers.md)** - Devcontainer setup, customization, and troubleshooting

### Shared Copilot Agents

This template now ships four shared agent definitions in `.copilot/agents/`:

- `Orchestrator`
- `Planner`
- `Coder`
- `Designer`

Install them into the current VS Code/Copilot environment with:

```bash
./scripts/install-copilot-agents.sh
```

Use `--link` if you want your local agent files to track repo edits in place, or `--force` to replace existing files. If you work in Remote WSL or a devcontainer, run the script in that same remote environment so it installs into the correct `~/.copilot/agents` home.


## 🤝 Contributing

This template is for use by TECHLETES employees. See [CONTRIBUTING.md](CONTRIBUTING.md) for internal contribution guidelines, required 1Password CLI setup, and branch workflow.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🛟 Troubleshooting

### Common Issues

**Virtual environment issues:**
```bash
rm -rf .venv
uv sync
```

**Pre-commit hook failures:**
```bash
pre-commit run --all-files
# Fix any issues and re-commit
```

**1Password CLI not working:**
- Ensure 1Password CLI is installed on Windows
- Enable CLI integration in 1Password settings
- Link to WSL if using Windows Subsystem for Linux

**Dependency conflicts:**
```bash
pip check  # Identify conflicts
# Review and resolve in pyproject.toml, then run uv lock && uv sync
```

---

**🎯 Ready to start your Python project with modern tooling and best practices!**
