# Copilot Instructions for Python Basic Template (TECHLETES)

## Project Overview

A production-ready Python project template for TECHLETES employees. Features modern dependency management (`uv`), secure secret management (1Password CLI integration), comprehensive development tooling, and mandatory pre-commit hooks for code quality.

**Key Characteristics:**
- Python 3.12+ required
- Reproducible builds via `uv` lock file
- Runtime + static type checking (beartype + mypy)
- 16+ pre-commit hooks enforcing code quality
- Full CI/CD pipeline with GitHub Actions
- Internal use only (TECHLETES employees with 1Password access)

---

## Essential Rules

### Rule 1: Secrets Management
**Never put secrets in code, environment files, or notebooks.**
- Use `from utils.secrets import get_secret()` to load secrets from 1Password
- Pattern: `get_secret("op://Vault Name/Item Name/field_name")`
- Example: `api_key = get_secret("op://Engineering/GitHub/token")`
- 1Password CLI (`op` command) must be installed and authenticated
- See `docs/2_secret_management.md` for setup details

### Rule 2: Dependency Management
**Never run `pip install` directly.**
- Always declare packages in `pyproject.toml` under `[dependencies]` or `[dependency-groups]`
- Workflow: Edit `pyproject.toml` → `uv lock` → `uv sync`
- Why: Ensures all developers use identical versions (reproducibility)
- Versions use range syntax: `package>=X.Y.Z,<X+1.0.0` (pin major version)
- The `uv.lock` file is auto-generated—commit it, never edit manually

### Rule 3: Type Hints Required
- All functions/methods must have type hints on parameters and return values
- Enforced at static check (mypy) and runtime (beartype) levels
- Disallowed untyped definitions: `def foo(x): ...` will fail type checking
- Example:
  ```python
  def process_data(items: list[str], timeout: int = 30) -> dict[str, int]:
      return {item: len(item) for item in items}
  ```

### Rule 4: Commit and Virtual Environment
- **Always activate the virtual environment before committing**
  - Linux/macOS: `source .venv/bin/activate`
  - Windows: `.venv\Scripts\Activate.ps1`
  - Or use direnv: `direnv allow` (auto-activates on `cd`)
- Pre-commit hooks require packages from the venv to run
- If hooks fail, fix issues and recommit—this is normal and protects the repo
- Skip with `git commit --no-verify` only in emergencies (not recommended)

---

## Quick Start

### Initial Setup (First Time)
```bash
git clone https://github.com/TECHLETES/python_basic_template.git
cd python_basic_template
./scripts/setup.sh        # Linux host setup
# On Windows or macOS, prefer the devcontainer workflow from docs/quickstart.md
```

### Activate Virtual Environment (Every Session)
```bash
source .venv/bin/activate           # Linux/macOS
.venv\Scripts\Activate.ps1          # Windows
direnv allow                        # If using direnv
```

### Daily Commands

| Task | Command |
|------|---------|
| **Install/update deps** | `uv sync` |
| **Add new package** | Edit `pyproject.toml`, then `uv lock && uv sync` |
| **Run tests** | `uv run pytest` |
| **Run tests with coverage** | `uv run pytest --cov` |
| **Format code** | `uv run black .` |
| **Lint and fix** | `uv run ruff check . --fix` |
| **Type check** | `uv run mypy . --config-file=pyproject.toml` |
| **Pre-commit all files** | `uv run pre-commit run --all-files` |
| **Load secret** | `from utils.secrets import get_secret; api_key = get_secret("op://...")` |

---

## Project Structure & Key Files

```
utils/                              # Production code (shared utilities)
├── __init__.py                    # Enables runtime type checking
├── secrets.py                     # 1Password CLI wrapper (get_secret)
└── [other modules]

example/                            # Example code & notebooks
├── using_secrets.py               # Demo of secret loading
└── using_secrets.ipynb            # Jupyter with auto-stripped outputs

tests/
└── utils/                          # Test structure mirrors production
    └── test_*.py                  # Unit tests (prefix: test_)

scripts/
├── setup.sh                       # Linux host environment initialization
├── install-copilot-agents.sh      # Installs repo-shared Copilot agents and skills
├── new-branch.sh                  # Git workflow helper
└── hooks/                         # Pre-commit hook scripts
    ├── nbstripout-autoadd.sh      # Auto-strip notebook outputs
    └── run-pip-audit.sh           # pip-audit wrapper used in hooks and CI

.github/
├── workflows/ci.yml               # GitHub Actions: pre-commit, tests, coverage, devcontainer smoke
├── pull_request_template.md       # PR checklist (includes security review)
└── dependabot.yml                 # Automated dependency updates

docs/
├── 0_setup.md                     # Setup walkthrough
├── 1_usage.md                     # Daily development guide
├── 2_secret_management.md         # 1Password integration
├── 3_dependency_management.md     # Using uv
├── 4_code_quality.md              # Typing & linting tools
├── 5_pre_commit_hooks.md          # Hook explanations
└── 6_pre_commit_troubleshooting.md

pyproject.toml                      # Single source of truth (metadata, deps, tool configs)
uv.lock                             # Locked dependency versions (auto-generated, commit it)
.pre-commit-config.yaml             # 16+ pre-commit hooks configuration
```

---

## Key Conventions

### Code Organization
- **Production code:** Place in `utils/` or `example/` packages
- **Tests:** Mirror production structure—test `utils/foo.py` in `tests/utils/test_foo.py`
- **Test naming:** Functions `test_*()`, classes `Test*`
- **Small functions:** Prefer composable, testable units over large monoliths

### Type Hints
- Required on all functions/methods (enforced by mypy config: `disallow_untyped_defs = true`)
- Use modern syntax: `list[str]`, `dict[str, int]` (Python 3.9+)
- Return types always specified: `def foo(...) -> ReturnType:`
- Example valid function:
  ```python
  def validate_secret_path(path: str) -> bool:
      return path.startswith("op://")
  ```

### Code Style
- **Line length:** 88 characters (Black formatter)
- **Imports:** Sorted by Ruff import-sorting rules, auto-fixed by pre-commit
- **Modernization:** pyupgrade auto-converts old syntax (Python 3.12+)
- **Docstrings:** Checked by pydocstyle (Google style recommended)

### Dependencies
- **Declare in:** `pyproject.toml` only
- **Syntax:** `package>=MAJOR.MINOR.Z,<NEXT_MAJOR` (allow patch/minor, block major bumps)
- **Groups:** `dependencies` (production), `dev` (development), `extra` (optional production)
- **Lock file:** Auto-generated; run `uv lock` after editing `pyproject.toml`

### Git Workflow
- **Branch naming:** Use `./scripts/new-branch.sh` to create feature branches
- **Commits:** Must pass all pre-commit checks (linting, tests, type checking, security)
- **Pre-commit hooks:** Run automatically on `git commit` (venv must be active)
- **Manual pre-check:** `uv run pre-commit run --all-files` before committing
- **Force push only if:** Rebasing your own unpushed branch

---

## Development Tools & Quality Checks

### Pre-Commit Hooks (Mandatory on Every Commit)
All 16+ hooks run automatically when you commit (if venv is active).

| Hook | Purpose | Auto-fixes? |
|------|---------|------------|
| `detect-secrets` | Blocks secrets from being committed | ❌ Manual fix required |
| `black` | Code formatting (88-char lines) | ✅ Auto-fixes |
| `pyupgrade` | Modernizes Python syntax | ✅ Auto-fixes |
| `ruff` | Comprehensive linting | ✅ Most auto-fixed |
| `mypy` | Static type checking | ❌ Manual fix required |
| `bandit` | Security vulnerability scanning | ❌ Manual fix required |
| `pip-audit` | Dependency vulnerability audit | ❌ Update deps required |
| `codespell` | Spell checking | ✅ Auto-fixes (with review) |
| `pydocstyle` | Docstring format validation | ❌ Manual fix required |
| `nbstripout` | Strips Jupyter notebook outputs | ✅ Auto-fixes |
| Custom scripts | Test runner, lock file verification | ❌ Manual fix required |

### CI/CD Pipeline (.github/workflows/ci.yml)
Runs on every PR and merge to `main`/`staging`:
1. Lint & format check (black, ruff)
2. Type checking (mypy)
3. Security scanning (bandit, pip-audit, detect-secrets)
4. Unit tests (pytest)
5. Coverage report with badge update
6. Auto-commit coverage badge to PR branch

---

## Common Workflows

### Add a New Dependency
```bash
# 1. Edit pyproject.toml [dependencies] or [dependency-groups.dev]
[dependencies]
new-package = ">=1.0.0,<2.0.0"  # Semantic versioning

# 2. Generate lock file
uv lock

# 3. Install dependencies
uv sync

# 4. Verify
uv tree  # See dependency tree
```

### Fix Type Checking Errors
```bash
# Run mypy to see errors
uv run mypy . --config-file=pyproject.toml

# Common fixes:
# - Add type hints to parameters/returns: def foo(x: int) -> str
# - Use Optional[T] for nullable values: Optional[str]
# - Use Union[T1, T2] for multiple types: Union[int, str]
# - Import from typing: from typing import Optional, Union, Any
```

### Manage CVE Exclusions for pip-audit
```bash
# Edit pyproject.toml [tool.pip-audit] section to add/remove exclusions
# Both pre-commit and CI will automatically use the updated list

[tool.pip-audit]
ignore = [
    "CVE-2026-1703",  # Brief explanation of why this CVE is excluded
    "CVE-2024-XXXXX",  # Add new exclusions here
]

# Run pip-audit locally to verify
uv run bash scripts/hooks/run-pip-audit.sh --progress-spinner off --desc

# Script automatically reads from pyproject.toml and applies exclusions
```

### Debug Pre-Commit Hook Failures
```bash
# Run a specific hook manually
uv run pre-commit run black --all-files
uv run pre-commit run mypy --all-files
uv run pre-commit run bandit --all-files

# Run all hooks
uv run pre-commit run --all-files

# See logs if a Python tool failed
# Edit the file to fix the issue, then commit again
```

### Load a Secret in Code
```python
from utils.secrets import get_secret

# Load secret and use directly
api_token = get_secret("op://Engineering/GitHub/token")

# Or save to environment variable for subprocess
get_secret("op://Engineering/Database/password", "DB_PASSWORD")
# Now can access: os.environ["DB_PASSWORD"]
```

### Create a Test
```python
# File: tests/utils/test_my_module.py
from utils.my_module import my_function

def test_my_function_returns_correct_value() -> None:
    result = my_function("input")
    assert result == "expected_output"

def test_my_function_handles_edge_case() -> None:
    result = my_function("")
    assert result is not None
```

### View Test Coverage
```bash
pytest --cov=utils --cov=example --cov-report=html
# Opens: htmlcov/index.html
```

---

## Common Issues & Solutions

### ❌ Error: "pytest: command not found"
**Cause:** Virtual environment not activated
**Fix:**
```bash
source .venv/bin/activate  # Linux/macOS
.venv\Scripts\Activate.ps1 # Windows
```

### ❌ Error: "Pre-commit hook failed" on commit
**Cause:** Code doesn't pass quality checks
**Fix:**
```bash
pre-commit run --all-files  # See exactly which checks failed
# Fix the issues (most auto-fix, some require manual edits)
git add .
git commit  # Retry
```

### ❌ Error: "mypy: disallow_untyped_defs"
**Cause:** Function missing type hints
**Fix:** Add type hints to parameters and return value
```python
# ❌ Before
def process_items(items):
    return len(items)

# ✅ After
def process_items(items: list[str]) -> int:
    return len(items)
```

### ❌ Error: "Secret detected in file"
**Cause:** detect-secrets hook blocked a secret
**Fix:**
1. Remove the secret from the file
2. Use `get_secret()` instead:
   ```python
   from utils.secrets import get_secret
   api_key = get_secret("op://Vault/Item/field")
   ```
3. Commit again

### ❌ Error: "op: command not found"
**Cause:** 1Password CLI not installed
**Fix:** See `CONTRIBUTING.md` for 1Password CLI setup
```bash
# Verify installation
op --version
op account list  # Authenticate
```

### ⚠️ Issue: Notebook outputs committed to git
**Cause:** nbstripout hook didn't run (venv likely inactive)
**Fix:**
```bash
# Activate venv
source .venv/bin/activate

# Strip outputs manually
jupyter nbconvert --ClearingPreprocessor.enabled=True example/using_secrets.ipynb

# Commit again
```

### ⚠️ Issue: "Edited uv.lock" shows up in diffs
**Cause:** Manually edited uv.lock (should never happen)
**Fix:**
```bash
# Regenerate correct lock file
uv lock

# Commit the regenerated version
```

---

## Pre-Commit Hook Troubleshooting

See `docs/6_pre_commit_troubleshooting.md` for detailed troubleshooting of individual hooks.

**Quick reference:**
- **Most hooks auto-fix:** Run `pre-commit run --all-files` to auto-fix, then recommit
- **Some hooks require manual fixes:** mypy, bandit, pydocstyle, detect-secrets
- **Skip all hooks (last resort only):** `git commit --no-verify`
- **Skip config in direnv:** Edit `.envrc` → run `direnv allow`

---

## File Preferences for AI Coding

### When Writing Code
1. **Type hints:** Always include them—required for mypy
2. **Docstrings:** Use Google style format; checked by pydocstyle
3. **Functions:** Keep them small and testable (test each function)
4. **Imports:** Use absolute imports, not relative (`from utils ...` not `from ..utils`)
5. **Line length:** Aim for ≤88 characters (Black will format longer lines)

### Example: Well-Structured Function
```python
"""Module for processing user data."""

from typing import Optional
from utils.logging import get_logger

logger = get_logger(__name__)


def validate_email(email: str) -> bool:
    """Check if email format is valid.

    Args:
        email: Email address to validate.

    Returns:
        True if email is valid, False otherwise.
    """
    import re
    pattern = r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
    is_valid = bool(re.match(pattern, email))
    logger.debug(f"Validated email: {is_valid}")
    return is_valid
```

---

## References

- **README:** Overview and essential rules
- **docs/0_setup.md:** Step-by-step setup
- **docs/1_usage.md:** Daily development guide
- **docs/2_secret_management.md:** 1Password integration
- **docs/3_dependency_management.md:** Using `uv`
- **docs/4_code_quality.md:** Type hints & linting
- **docs/5_pre_commit_hooks.md:** Hook details
- **docs/6_pre_commit_troubleshooting.md:** Troubleshooting
- **CONTRIBUTING.md:** Contribution guidelines
- **pyproject.toml:** Tool configurations (pytest, mypy, ruff, black, etc.)

---

## For AI Assistants (Copilot/Claude)

When working on code in this repository:

✅ **DO:**
- Enforce type hints on all functions (required, not optional)
- Follow the 88-character line limit
- Add comprehensive docstrings (Google style)
- Write tests in `tests/utils/test_*.py` mirroring production structure
- Use `from utils.secrets import get_secret()` for any secrets
- Suggest dependency additions to `pyproject.toml`, not direct pip installs
- Check pre-commit hook configurations for lint/format requirements

❌ **DON'T:**
- Write untyped functions (will fail mypy)
- Put secrets or API keys in code
- Use relative imports (`from ..module` instead of `from utils.module`)
- Suggest running `pip install` directly
- Make manual edits to `uv.lock`
- Assume pre-commit hooks should be skipped
- Create imports of unlisted dependencies (always add to `pyproject.toml` first)

---

*Last updated: 2026-03-03*
*For questions or updates, see CONTRIBUTING.md*
