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

Treat API keys, OAuth client secrets, tenant identifiers, passwords, and tokens
as sensitive. Use `.env.template` only for placeholder names and use the
repository's detect-secrets and pip-audit checks before handing work back.
