# 3. Pre-commit Hook Setup

This project uses `pre-commit` to automate code quality checks and housekeeping tasks such as secret detection, notebook cleanup, and dependency enforcement before code is committed.

All hooks run **locally** and must pass before a commit is allowed.

---

## 3.1 Overview of Hooks

The following hooks are currently configured:

| Hook ID | Purpose |
| --- | --- |
| `prevent-manual-requirements-edits` | Block manual edits to `requirements.txt` |
| `nbstripout-autoadd` | Strip notebook outputs and auto-stage cleaned files |
| `black-autoformat` | Auto-format Python code with Black |
| `detect-secrets` | Detect and prevent committing secrets |
| `jupytext` | Sync `.ipynb` and `.py` notebook pairs |
| `mypy` | Type check Python code with mypy |
| `ruff` | Lint Python code with Ruff (includes isort) |

The configuration is stored in the `.pre-commit-config.yaml` file at the project root.

---

---

## 3.2 How to Use

From now on, every time you run `git commit`, `pre-commit` will:

1. Block manual edits to `requirements.txt`
2. Strip outputs from notebooks using `nbstripout-autoadd`
3. Auto-format Python code with Black
4. Detect any committed secrets with `detect-secrets`
5. Sync `.ipynb` and `.py` files using `jupytext`
6. Type check Python code with `mypy`
7. Lint Python code with `ruff` (includes import sorting)

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

#### Black Auto-formatting

The `black-autoformat` hook automatically formats Python code to ensure consistent style across the project. Black is an opinionated code formatter that:

- Ensures consistent indentation and spacing
- Formats imports and function definitions
- Handles line length and string formatting
- Automatically fixes formatting issues

If Black makes changes to your files, they will be automatically staged for commit.

#### Type Checking with MyPy

The `mypy` hook performs static type checking on Python code to catch type-related errors before runtime. It:

- Validates type annotations
- Catches potential type mismatches
- Enforces type safety
- Uses configuration from `pyproject.toml`

#### Linting with Ruff

The `ruff` hook provides fast Python linting and includes:

- Code quality checks (similar to flake8)
- Import sorting (replacing isort)
- Security vulnerability detection
- Performance and bug detection
- Automatically fixes issues where possible

---

### 3.3.3 Keeping Secrets Safe

To avoid accidentally committing secrets (API keys, tokens, etc.), the project uses `detect-secrets`. This works by scanning committed files for sensitive content using a predefined baseline.

**Updating the secret baseline**

If you intentionally add or rotate secrets:

```bash
detect-secrets scan > .secrets.baseline
git add .secrets.baseline
```

Make sure `.secrets.baseline` stays committed and up to date.

---

### 3.3.4 Enforcing Dependency Workflow

The custom `prevent-manual-requirements-edits` hook ensures that `requirements.txt` is only modified via `pip-compile` and never edited manually.

To add a package:

```bash
echo "package-name" >> requirements.in
./scripts/dependency.sh
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

### 3.5.1 Locale warnings (WSL or CI environments)

- If you see:
    
    ```bash
    setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
    ```
    
- Fix it by running:
    
    ```bash
    sudo apt install locales
    sudo locale-gen en_US.UTF-8
    sudo update-locale LANG=en_US.UTF-8
    ```
    

### 3.5.2 `nbstripout: command not found`

This means `nbstripout` isn’t installed in the hook’s environment. Make sure your `.pre-commit-config.yaml` includes:

```yaml
  additional_dependencies: [nbstripout]
```

in the `nbstripout-autoadd` hook definition.

### 3.5.3 MyPy Type Checking Issues

If you encounter type checking errors:

- Add type annotations to your functions and variables
- Use `# type: ignore` comments for specific lines that can't be typed
- Update your `pyproject.toml` mypy configuration if needed
- Install type stubs for third-party packages: `pip install types-<package-name>`

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