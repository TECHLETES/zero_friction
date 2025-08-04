# 4. Code Quality

To ensure robust, maintainable, and secure Python code across all TECHLETES projects, this template integrates a layered code quality system focused on two key areas: **typing** and **quality enforcement**. The tools used are Ruff, Mypy, Beartype, and Black.

## 4.1 Typing

Typing tools ensure correctness before and during runtime by statically analyzing annotated types and optionally enforcing them during execution.

### 4.1.1 Mypy (Static Type Checking)

Mypy checks type correctness at development and commit time, catching bugs before runtime.

- Runs on staged files via pre-commit
- Full project checks can be done with `pre-commit run --all-files` or in CI
- Integrated into editors like VS Code for real-time feedback
- Configured in `pyproject.toml`

**Run manually:**

```bash
mypy . --config-file=pyproject.toml
```

**What it checks:**

- Incorrect argument or return types
- Type mismatches across modules
- Missing annotations

### 4.1.2 Beartype (Runtime Type Enforcement)

Beartype enforces type correctness at runtime for annotated functions and classes.

- Enabled automatically in development and testing (when `RUNTIME_TYPECHECK=true`)
- Controlled by `RUNTIME_TYPECHECK` environment variable (defaults to `true`)
- Can be disabled in production by setting `RUNTIME_TYPECHECK=false` for performance
- Automatically imports and instruments packages via `beartype_this_package()` in `__init__.py` files

**Test integration:**

Beartype is automatically enabled during pytest execution through the `--beartype-packages` configuration in `pyproject.toml`:

```bash
pytest  # Beartype is automatically enabled for utils and example packages
```

To run tests without beartype (for performance):

```bash
RUNTIME_TYPECHECK=false pytest
```

## 4.2 Quality

Quality tools enforce style, consistency, and early bug detection. Ruff, Black, and other pre-commit hooks are used for automatic linting and formatting.

### 4.2.1 Ruff (Linting and Import Sorting)

Ruff provides fast linting and catches many code issues before commit.

- Replaces flake8, isort, and pyupgrade in a single fast tool
- Configured via `pyproject.toml` with enabled rules: E (pycodestyle), F (pyflakes), I (isort), B (bugbear), UP (pyupgrade)
- Automatically fixes issues when possible
- Target version set to Python 3.11+ with 88-character line length

**Run manually:**

```bash
ruff check . --fix
```

**What it catches:**

- Unused imports or variables
- Syntax errors
- Import ordering and formatting violations
- Code smells (e.g. using `lambda x: x` unnecessarily)

### 4.2.2 Black (Code Formatting)

Black is the opinionated formatter used to ensure all code is styled consistently.

- Used alongside Ruff for full formatting consistency
- Auto-formats code during pre-commit hooks
- Configured in `pyproject.toml` with 88-character line length and Python 3.12 target
- Integrated with the pre-commit `black-autoformat` hook

**Run manually:**

```bash
black .
```

**What it does:**

- Enforces line length and consistent formatting
- Normalizes string quotes and indentation
- Removes formatting inconsistencies across teams

## 4.3 Configuration Details

All tools are configured in `pyproject.toml`:

- **MyPy**: Strict mode enabled with Python 3.12 target, excludes migrations and notebooks
- **Ruff**: Targets Python 3.11+ with rules E, F, I, B, UP enabled, respects .gitignore
- **Black**: 88-character line length, Python 3.12 target version
- **Beartype**: Automatically enabled for `utils` and `example` packages during testing
- **Pytest**: Configured with coverage reporting and beartype integration

## 4.4 Summary

| Tool | Purpose | When It Runs | Configuration |
| --- | --- | --- | --- |
| Ruff | Linting & import sorting | Pre-commit, CI, manual | `pyproject.toml` - rules E,F,I,B,UP |
| Black | Code formatting | Pre-commit, manual | `pyproject.toml` - 88 chars, py312 |
| MyPy | Static type checking | Pre-commit, CI, IDE | `pyproject.toml` - strict mode |
| Beartype | Runtime type checking | Dev/test execution | `RUNTIME_TYPECHECK` env var |

## 4.5 Running All Tools

To run all quality checks manually:

```bash
# Format code
black .

# Lint and fix issues
ruff check . --fix

# Type check
mypy .

# Run tests with beartype
pytest
```

Or use pre-commit to run all configured hooks:

```bash
pre-commit run --all-files
```