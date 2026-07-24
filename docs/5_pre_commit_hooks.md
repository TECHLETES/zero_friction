# 3. Pre-commit Hook Setup

This project uses `pre-commit` to automate code quality checks and housekeeping tasks such as secret detection, notebook cleanup, and dependency enforcement before code is committed.

All hooks run **locally** and must pass before a commit is allowed.

Here, “locally” means inside the devcontainer attached to the repository. The
container bootstrap installs the hooks; use `uv run pre-commit` for manual runs.

---

## 3.1 Overview of Hooks

The following hooks are currently configured:

| Hook ID | Purpose |
| --- | --- |
| `nbstripout-autoadd` | Strip notebook outputs and auto-stage cleaned files |
| `black` | Auto-format Python code with Black |
| `trailing-whitespace` and `end-of-file-fixer` | Basic text hygiene |
| `check-toml`, `check-json`, `check-yaml`, `check-symlinks` | Validate common config files |
| `check-added-large-files` and `check-merge-conflict` | Prevent common Git mistakes |
| `detect-private-key` | Block private keys |
| `pretty-format-json` | Reformat JSON files |
| `pip-audit` | Check Python dependencies for known vulnerabilities |
| `detect-secrets` | Detect and prevent committing secrets |
| `jupytext` | Sync `.ipynb` and `.py` notebook pairs |
| `mypy` | Type check Python code with mypy |
| `pyupgrade` | Modernize Python syntax for Python 3.12 |
| `ruff` | Lint Python code with Ruff (includes import sorting) |
| `bandit` | Run Python security linting |
| `pydocstyle` | Validate docstring conventions |
| `pytest` | Run tests with coverage in pre-commit |

The configuration is stored in the `.pre-commit-config.yaml` file at the project root.

---

---

## 3.2 How to Use

From now on, every time you run `git commit`, `pre-commit` will:

1. Strip outputs from notebooks using `nbstripout-autoadd`
2. Auto-format Python code with Black
3. Run text and config hygiene checks
4. Detect any committed secrets with `detect-secrets`
5. Audit dependencies with `pip-audit`
6. Sync `.ipynb` and `.py` files using `jupytext`
7. Type check Python code with `mypy`
8. Modernize syntax with `pyupgrade`
9. Lint and sort imports with `ruff`
10. Run security and docstring checks with `bandit` and `pydocstyle`
11. Run pytest with coverage

If any hook fails, the commit is blocked until the issue is resolved.

---

## 3.3 Explanation of hooks

### 3.3.1 Auto-Staging of Notebooks

The `nbstripout-autoadd` hook is a **local wrapper** that:

- Strips outputs from Jupyter notebooks
- Detects which `.ipynb` files were modified
- Automatically stages those cleaned files so you don’t need to run `git add` manually

---

### 3.3.2 Code Formatting and Quality

#### Black Formatting

The `black` hook automatically formats Python code to ensure consistent style across the project. Black is an opinionated code formatter that:

- Ensures consistent indentation and spacing
- Formats imports and function definitions
- Handles line length and string formatting
- Automatically fixes formatting issues

If Black makes changes to your files, re-stage them before retrying the commit.

#### Type Checking with MyPy

The `mypy` hook performs static type checking on Python code to catch type-related errors before runtime. It:

- Validates type annotations
- Catches potential type mismatches
- Enforces type safety
- Uses configuration from `pyproject.toml`

#### Linting with Ruff

The `ruff` hook provides fast Python linting and includes:

- Code quality checks (similar to flake8)
- Import sorting (handled by Ruff)
- Security vulnerability detection
- Performance and bug detection
- Automatically fixes issues where possible

---

### 3.3.3 Keeping Secrets Safe

To avoid accidentally committing secrets (API keys, tokens, etc.), the project uses `detect-secrets`. This works by scanning committed files for sensitive content using a predefined baseline.

**Updating the secret baseline**

If you intentionally add or rotate secrets:

```bash
scripts/hooks/run-detect-secrets.sh
git add .secret.baseline
```

The helper reads the shared exclusions from `[tool.detect-secrets]` in
`pyproject.toml`, runs the scan, and opens the interactive audit when run from
the devcontainer terminal. In CI and pre-commit, the audit is skipped because
there is no interactive terminal; those checks enforce the existing baseline.

Run `scripts/hooks/run-detect-secrets.sh --non-interactive` when a scan is
needed without opening the audit UI.

Make sure `.secret.baseline` stays committed and up to date.

---

### 3.3.4 Enforcing Dependency Workflow

This repository does not use `requirements.txt` as the primary dependency contract. Dependencies are declared in `pyproject.toml` and locked in `uv.lock`, and the pre-commit pipeline enforces safety through `pip-audit` plus the repo's `uv` workflow.

To add a package:

```bash
# 1. Edit pyproject.toml
# 2. Regenerate the lock file and sync the environment
uv lock
uv sync
```

---

## 3.4 Running All Hooks Manually

To check all files before pushing or after changing hook config:

```bash
pre-commit run --all-files
```

This is useful to verify changes or fix all issues in one go.

---

## 3.5 Troubleshooting

### 3.5.1 Locale warnings

- If you see:

    ```bash
    setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
    ```

- The devcontainer image supplies the expected locale. If the warning appears
  after a container change, rebuild the container and rerun the check. Do not
  install system packages manually from the project terminal.


### 3.5.2 `nbstripout: command not found`

This usually means the project environment has not been synced yet. This repo uses a local hook script that runs through `uv`, so ensure dependencies are installed:

```bash
uv sync
```

### 3.5.3 MyPy Type Checking Issues

If you encounter type checking errors:

- Add type annotations to your functions and variables
- Use `# type: ignore` comments for specific lines that can't be typed
- Update your `pyproject.toml` mypy configuration if needed
- Add required type-stub packages to `pyproject.toml`, then run `uv lock` and
  `uv sync` in the devcontainer

### 3.5.4 Ruff Linting Issues

If Ruff reports linting errors:

- Most issues can be auto-fixed by running: `ruff check --fix .`
- Check the specific error codes and adjust your code accordingly
- Use `# noqa: <error-code>` to ignore specific violations
- Update the Ruff configuration in `pyproject.toml` if needed

### 3.5.5 Black Formatting Conflicts

If you have formatting conflicts:

- Let Black handle all formatting automatically
- Avoid manual formatting that conflicts with Black's style
- Use `# fmt: off` and `# fmt: on` comments to disable Black for specific sections if absolutely necessary
