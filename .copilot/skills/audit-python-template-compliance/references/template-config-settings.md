# Template Config Settings

This file captures the concrete settings currently used by the TECHLETES Python
template. Use it when the audit needs exact values rather than broad baseline
expectations.

These values come from the template's executable configuration. If this file and
the repo config ever diverge, the repo config wins and this file should be
updated.

## pyproject.toml

### Build and Package Metadata

`[build-system]`

- `requires = ["setuptools>=61.0", "wheel", "pip>=26.0,<27.0.0", "uv>=0.9.25,<1.0.0"]`
- `build-backend = "setuptools.build_meta"`

`[project]`

- `name = "python-basic-template"`
- `version = "0.1.0"`
- `description = "A basic Python project template with full DevOps tooling support."`
- `readme = "README.md"`
- `requires-python = ">=3.12,<4.0"`
- `keywords = ["devops", "template", "python"]`
- authors and maintainers are populated
- classifiers target Python 3.12

`[project.urls]`

- `Homepage = "https://github.com/TECHLETES/python_basic_template"`
- `Repository = "https://github.com/TECHLETES/python_basic_template"`
- `Issues = "https://github.com/TECHLETES/python_basic_template/issues"`

### Dependencies

`[project].dependencies`

- `flask>=3.1.3,<4.0.0`
- `requests>=2.32.0,<3.0.0`
- `urllib3>=2.6.0,<3.0.0`
- `werkzeug>=3.1.6,<4.0.0`
- `filelock>=3.20.0,<4.0.0`

`[dependency-groups].dev`

- `pre-commit>=4.5.0,<5.0.0`
- `detect-secrets>=1.5.0,<2.0.0`
- `nbstripout>=0.8.0,<1.0.0`
- `ipykernel>=6.29.0,<7.0.0`
- `pytest>=9.0.3,<10.0.0`
- `pytest-cov>=7.0.0,<8.0.0`
- `black>=25.12.0,<27.0.0`
- `mypy>=1.19.0,<2.0.0`
- `ruff>=0.14.0,<1.0.0`
- `beartype>=0.22.0,<1.0.0`
- `pytest-beartype>=0.2.0,<1.0.0`
- `pip-audit>=2.10.0,<3.0.0`
- `rich>=14.2.0,<15.0.0`
- `pyupgrade>=3.15.0,<4.0.0`
- `codespell>=2.2.0,<3.0.0`
- `bandit>=1.7.0,<2.0.0`
- `pydocstyle>=6.3.0,<7.0.0`
- `genbadge[coverage]>=1.1.0,<2.0.0`
- `testcontainers>=4.8.0`
- `pillow~=12.2`

`[dependency-groups].extra`

- present and currently empty except for a commented example

### setuptools package discovery

`[tool.setuptools.packages.find]`

- `where = ["."]`
- `include = ["utils*", "example*"]`
- `exclude = ["tests*"]`

### Black

`[tool.black]`

- `line-length = 88`
- `target-version = ["py312"]`

### pytest

`[tool.pytest]`

- `minversion = "9.0.3"`
- `addopts = [`
  `"--strict-markers"`,
  `"--strict-config"`,
  `"--cov=utils"`,
  `"--cov=example"`,
  `"--cov-report=term-missing"`,
  `"--cov-report=html"`,
  `"--cov-report=xml"`,
  `"--beartype-packages=utils,example"`
  `]`
- `testpaths = ["tests"]`
- `python_files = ["test_*.py", "*_test.py"]`
- `python_classes = ["Test*"]`
- `python_functions = ["test_*"]`
- `pythonpath = ["."]`

### coverage.py

`[tool.coverage.run]`

- `source = ["utils", "example"]`
- `omit = [`
  `"*/__pycache__/*"`,
  `"*/tests/*"`,
  `"*/example/*"`,
  `"*/.venv/*"`,
  `"*/venv/*"`,
  `"*/__init__.py"`,
  `"setup.py"`
  `]`

`[tool.coverage.report]`

- `exclude_lines = [`
  `"pragma: no cover"`,
  `"def __repr__"`,
  `"if self.debug:"`,
  `"if settings.DEBUG"`,
  `"raise AssertionError"`,
  `"raise NotImplementedError"`,
  `"if 0:"`,
  `"if __name__ == .__main__.:"`,
  `"class .*\\bProtocol\\):"`,
  `"@(abc\\.)?abstractmethod"`,
  `"except ImportError"`,
  `"pass"`
  `]`

### mypy

`[tool.mypy]`

- `python_version = "3.12"`
- `ignore_missing_imports = true`
- `follow_imports = "silent"`
- `warn_unused_ignores = true`
- `warn_return_any = true`
- `warn_unreachable = true`
- `no_implicit_optional = true`
- `allow_redefinition = true`
- `show_column_numbers = true`
- `pretty = true`
- `warn_unused_configs = true`
- `disallow_untyped_defs = true`
- `disallow_incomplete_defs = true`
- `files = ["example"]`
- `exclude = '''(?x)(^migrations/|^notebooks/|^tests/|^\.venv/|^venv/)'''`
- `plugins = []`

### Ruff

`[tool.ruff]`

- `target-version = "py312"`
- `line-length = 88`
- `fix = true`
- `respect-gitignore = true`
- `extend-exclude = ["migrations"]`
- `lint.dummy-variable-rgx = "^_|^__|^pytest$"`

`lint.select = ["E", "F", "I", "B", "UP"]`

- `E` for pycodestyle
- `F` for pyflakes
- `I` for import sorting
- `B` for bugbear
- `UP` for pyupgrade

`lint.ignore = ["B008", "E501"]`

### Bandit

`[tool.bandit]`

- `exclude_dirs = ["tests", ".venv"]`
- `skips = ["B101", "B601"]`

### pip-audit

`[tool.pip-audit]`

- `ignore = ["CVE-2026-1703"]`

### uv

`[tool.uv]`

- `required-version = ">=0.9.25,<1.0.0"`

## .pre-commit-config.yaml

### Hook set and revisions

- local `nbstripout-autoadd`
  `entry: uv run scripts/hooks/nbstripout-autoadd.sh`
  `language: system`
  `types: [jupyter]`
- `psf/black` at `25.9.0`
  `language_version: python3.12`
  `types: [python]`
- `pre-commit/pre-commit-hooks` at `v6.0.0`
  includes `trailing-whitespace`, `end-of-file-fixer`, `check-toml`,
  `check-json`, `check-symlinks`, `check-yaml`, `check-added-large-files`,
  `check-merge-conflict`, `detect-private-key`, `pretty-format-json`
- `end-of-file-fixer` excludes `coverage\.svg$`
- `pretty-format-json` uses `args: ["--autofix"]` and excludes `\.ipynb$`
- `pypa/pip-audit` at `v2.10.0`
  `args: ["--progress-spinner", "off", "--desc"]`
  `entry: uv run bash scripts/hooks/run-pip-audit.sh`
  `language: system`
  `stages: [pre-commit]`
- `Yelp/detect-secrets` at `v1.5.0`
  `args: ["--baseline", ".secret.baseline"]`
  `exclude: ^tests/`
- `mwouts/jupytext` at `v1.19.1`
  `args: [--sync]`
  `require_serial: true`
- `mirrors-mypy` at `v1.19.1`
  `args: ["--config-file=pyproject.toml"]`
  `pass_filenames: false`
- `asottile/pyupgrade` at `v3.21.2`
  `args: [--py312-plus]`
  `types: [python]`
- `astral-sh/ruff-pre-commit` at `v0.15.4`
  `args: [--fix]`
  `types: [python]`
- `PyCQA/bandit` at `1.9.4`
  `args: [-ll, --skip, B101]`
  `exclude: ^tests/`
  `types: [python]`
- `PyCQA/pydocstyle` at `6.3.0`
  `exclude: ^(tests/|example/)`
  `types: [python]`
- local `pytest`
  `entry: uv run pytest --cov --cov-fail-under=80 --beartype-packages=utils,example`
  `language: system`
  `pass_filenames: false`
  `types: [python]`
  `stages: [pre-commit]`

## Devcontainer Configuration

### .devcontainer/devcontainer.json

- build context: `..`
- dockerfile: `Dockerfile`
- `containerEnv.PRE_COMMIT_HOME = "/home/vscode/.cache/pre-commit"`
- `containerEnv.UV_CACHE_DIR = "/home/vscode/.cache/uv"`
- `containerEnv.UV_LINK_MODE = "copy"`
- `containerEnv.UV_PYTHON_DOWNLOADS = "never"`
- VS Code extensions installed in container:
  `ms-python.python`, `ms-python.vscode-pylance`,
  `ms-python.mypy-type-checker`, `charliermarsh.ruff`,
  `ms-toolsai.jupyter`
- VS Code settings in container:
  `jupyter.jupyterServerType = "local"`
  `python.defaultInterpreterPath = "${workspaceFolder}/.venv/bin/python"`
  `python.terminal.activateEnvironment = true`
  `python.testing.pytestArgs = ["."]`
  `python.testing.pytestEnabled = true`
  `python.testing.unittestEnabled = false`
  `ruff.enable = true`
- mounts:
  `source=python-template-uv-cache,target=/home/vscode/.cache/uv,type=volume`
  `source=python-template-pre-commit-cache,target=/home/vscode/.cache/pre-commit,type=volume`
- `name = "python-basic-template"`
- `postCreateCommand = "bash .devcontainer/post-create.sh"`
- `remoteUser = "vscode"`
- `updateRemoteUserUID = true`
- `workspaceFolder = "/workspaces/${localWorkspaceFolderBasename}"`

### .devcontainer/Dockerfile

- base image: `mcr.microsoft.com/devcontainers/python:1-3.12-bookworm`
- `ARG USERNAME=vscode`
- `ARG UV_VERSION=0.9.25`
- installs `uv` into `/usr/local/bin`
- sets:
  `PIP_DISABLE_PIP_VERSION_CHECK=1`
  `PYTHONDONTWRITEBYTECODE=1`
- pre-creates cache directories for `uv` and `pre-commit`

### .devcontainer/post-create.sh

- changes to repo root
- prints `uv --version` and `python --version`
- runs `uv sync --frozen`
- runs `uv run pre-commit install --install-hooks` when `.git` exists
- checks `uv run python -c "import ipykernel"`
- reports whether `op` exists

## GitHub Automation and Metadata

### .github/workflows/ci.yml

- workflow name: `CI`
- triggers:
  pull requests to `main` and `staging`
  pushes to `main` and `staging`
- `permissions.contents = write`

`lint-and-test` job:

- runs on `ubuntu-latest`
- `PRE_COMMIT_HOME = ${{ github.workspace }}/.pre-commit-cache`
- Python matrix: `['3.12']`
- uses:
  `actions/checkout@v6`
  `actions/setup-python@v6`
  `astral-sh/setup-uv@v7`
  `actions/cache@v4`
  `stefanzweifel/git-auto-commit-action@v7`
- installs dependencies with `uv sync`
- caches pre-commit hooks using `.pre-commit-config.yaml` hash
- runs `uv run pre-commit run --all-files`
- runs `uv run pytest --cov --cov-report=term --cov-report=xml`
- on pull requests, generates `coverage.svg` with
  `uv run genbadge coverage -i coverage.xml -o coverage.svg`
- on pull requests, auto-commits `coverage.svg` back to the PR branch with
  commit message `chore: update coverage badge`

`devcontainer-smoke` job:

- runs on `ubuntu-latest`
- uses `actions/checkout@v6`
- uses `docker/setup-buildx-action@v3`
- uses `devcontainers/ci@v0.3`
- builds from `.devcontainer/devcontainer.json`
- verifies:
  `.venv` exists
  `.git/hooks/pre-commit` is executable
  `uv --version` succeeds
  `.venv/bin/python --version` succeeds

### .github/dependabot.yml

- `version: 2`
- update ecosystems:
  `uv` in `/` daily, open PR limit `0`
  `npm` in `/web` daily, open PR limit `0`, commit prefix `deps`,
  `versioning-strategy: increase-if-necessary`
  `docker` in `/` daily, open PR limit `0`
  `github-actions` in `/` daily, open PR limit `0`

### .github/pull_request_template.md

- sections for:
  description
  type of change
  contributor checklist
  security considerations
  testing
  screenshots
  related issues
- checklist explicitly asks for documentation updates, self-review, warning-free
  changes, added tests, local test pass, and security review

### .github/ISSUE_TEMPLATE/

`config.yml`

- `blank_issues_enabled: false`
- contact links for:
  discussions
  private security advisory reporting
  documentation
  support/Q&A discussions

`bug-report.md`

- default title prefix: `[Bug] `
- default label: `bug`
- collects reproduction steps, expected vs actual behavior, screenshots/logs,
  environment, additional context, and acceptance criteria

`feature-request.md`

- default title prefix: `[FEATURE] `
- default label: `enhancement`
- collects problem statement, solution, alternatives, use case, implementation
  ideas, additional context, and priority/impact

`docs_update.md`

- default title prefix: `[DOCS] `
- default label: `documentation`
- collects target location, issue type, current content, suggested changes,
  context, audience, priority, related issues, and desired format

## Workspace Editor Configuration

### .vscode/extensions.json

- recommended extensions:
  `ms-vscode-remote.remote-containers`
  `ms-azuretools.vscode-docker`
  `ms-python.python`
  `ms-python.vscode-pylance`
  `ms-python.mypy-type-checker`
  `charliermarsh.ruff`
  `ms-toolsai.jupyter`
  `astral-sh.ty`
  `ms-python.autopep8`
  `ms-python.black-formatter`
  `ms-python.debugpy`
  `mgesbert.python-path`
  `docker.docker`
  `dbaeumer.vscode-eslint`
  `tamasfe.even-better-toml`
  `cweijan.vscode-excel`
  `GitHub.copilot-chat`
  `github.vscode-github-actions`
  `GitHub.vscode-pull-request-github`
  `ms-azuretools.vscode-azure-github-copilot`
  `mtxr.sqltools`
  `mtxr.sqltools-driver-mysql`
  `mtxr.sqltools-driver-pg`
  `mtxr.sqltools-driver-sqlite`
  `ms-ossdata.vscode-pgsql`

### .vscode/settings.json

- `mypy-type-checker.args = ["--config-file=pyproject.toml"]`
- `mypy-type-checker.cwd = "${workspaceFolder}"`
- `mypy-type-checker.importStrategy = "fromEnvironment"`
- `mypy-type-checker.reportingScope = "workspace"`
- `python.analysis.typeCheckingMode = "standard"`
- `python.defaultInterpreterPath = "${workspaceFolder}/.venv/bin/python"`
- `python.testing.pytestArgs = ["."]`
- `python.testing.pytestEnabled = true`
- `python.testing.unittestEnabled = false`
- `ruff.enable = true`

## Shell Bootstrap and Repo Hygiene

### .envrc

- loads `.env` if present using `set -a` and `source .env`
- exports:
  `PYTHONPATH=.`
  `VENV_DIR=".venv"`
  `PYPROJECT="pyproject.toml"`
- auto-activates `.venv/bin/activate` when `.venv` exists

### .detect-secrets.yaml

- excludes files matching `^tests/`

### .gitignore

- ignores Python caches and bytecode
- ignores virtual environments: `.venv/`, `venv/`, `env/`, `ENV/`
- ignores notebook checkpoints
- ignores mypy, Ruff, pytest, coverage, tox, nox caches and outputs
- ignores build and distribution artifacts
- ignores `.env` and `.env.*`
- ignores `.direnv/`

### .gitattributes

- `* text=auto`
- `*.sh eol=lf`
- `*.ps1 eol=crlf`
- `*.py eol=lf`
- `*.ipynb -text`

## Scripts and Repo Workflows

### scripts/setup.sh

- shebang: `#!/usr/bin/env bash`
- strict mode: `set -euo pipefail`
- exports default env vars:
  `VENV_DIR=.venv`
  `PYPROJECT=pyproject.toml`
- verifies/install system prerequisites: Python 3, pip, git, uv, direnv, curl
- for `apt-get` hosts, installs Docker and Docker Compose if missing
- runs `uv lock` then `uv sync`
- configures locales to `en_US.UTF-8`
- appends `eval "$(direnv hook bash)"` to `~/.bashrc` when absent
- runs `direnv allow` if `.envrc` exists
- installs pre-commit hooks, runs `pre-commit autoupdate`, then
  `pre-commit run --all-files`
- creates a secrets baseline with `detect-secrets scan > .secret.baseline`
- audits that baseline with `detect-secrets audit .secret.baseline`
- validates imports via `importlib.import_module("utils.secrets")`

### scripts/new-branch.sh

- usage: `./scripts/new-branch.sh <type> <description>`
- supported types: `feature`, `fix`, `docs`, `ui`, `devops`
- lowercases and slugifies description into branch name
- branch format: `<type>/<slug>`
- prunes `origin` remote-tracking branches
- deletes local branches already merged into `main`, excluding `main`
- creates the new branch from current HEAD with `git checkout -b`
- prints suggested follow-up commit and push commands

### scripts/install-copilot-agents.sh

- installs repo-shared Copilot assets into the user environment
- modes: `--copy` or `--link`
- replacement control: `--force`
- scope control: `--agents-only` or `--skills-only`
- env overrides:
  `COPILOT_AGENTS_DIR`
  `COPILOT_SKILLS_DIR`
- agents source: `.copilot/agents/*.agent.md`
- skills source: `.copilot/skills/*/SKILL.md` plus the full skill directory

## Copilot Customization Surface

### .github/copilot-instructions.md

- states the repo is a TECHLETES Python template with `uv`, 1Password,
  beartype plus mypy, pre-commit, and CI/CD expectations
- establishes four core rules:
  secrets management
  dependency management
  mandatory type hints
  committing from an active virtual environment
- documents daily commands and template-specific conventions for AI-assisted
  coding

### .copilot/

- contains versioned shared agents under `.copilot/agents/`
- contains versioned shared skills under `.copilot/skills/`
- install path is managed by `scripts/install-copilot-agents.sh`

## Governance Files

### CODE_OF_CONDUCT.md

- repository includes a Contributor Covenant based code of conduct adapted for
  TECHLETES internal collaboration

## How To Use During Audits

- Compare concrete values only where the target repo is expected to match the
  template directly.
- Generalize package names, repo names, paths, coverage targets, and cache
  identifiers to the target repo.
- If the target repo has an equivalent but intentionally different setting,
  record that as either an approved deviation or an equivalence decision.
