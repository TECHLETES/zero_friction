# Zero Friction SDK agent instructions

## Project context

This is a Python SDK repository. The generated API clients live under `sdk/`;
the hand-maintained unified package lives under `zero_friction/`. Keep changes
to generated files deliberate and do not invent API behavior when the OpenAPI
source or generated client is the source of truth.

## Development rules

- Use `uv` for Python commands, dependency changes, and the virtual environment.
- Declare dependencies in `pyproject.toml`, then run `uv lock && uv sync`.
- Do not use `pip install` directly or commit `.env` and credentials.
- Preserve the public package name, Python 3.9+ compatibility, and SDK client
  package structure unless the task explicitly changes them.
- Prefer small changes that follow the existing package and generated-code
  conventions. Do not rewrite unrelated generated clients.
- Add a focused test or runnable check for non-trivial logic.

## Verification

Run the smallest relevant checks, normally:

```bash
uv run pre-commit run --all-files
uv run pytest
```

Root-package linting, typing, and coverage target `zero_friction`; generated
clients under `sdk/` are intentionally excluded from those root settings.

## Security

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

## Pre-Commit Hook Troubleshooting

See `docs/6_pre_commit_troubleshooting.md` for troubleshooting individual hooks.

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

## For AI Assistants (Copilot/Claude/Codex)

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
