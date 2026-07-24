# Contributing to the Zero Friction SDK

Thanks for contributing to the unified Python SDK for the Zero Friction APIs.

## Development setup

Use Python 3.12 for the repository development toolchain. The published SDK
continues to support Python 3.9 and newer.

```bash
uv sync
cp .env.template .env
uv run pre-commit install --install-hooks
```

Never commit `.env` or real credentials. Declare dependency changes in
`pyproject.toml`, then run `uv lock && uv sync`; do not install packages with
`pip` directly.

## Branches and changes

Create a branch with a `feature/`, `fix/`, `docs/`, or `chore/` prefix. Keep
changes focused, preserve generated SDK clients unless regeneration is part of
the task, and update documentation when public usage changes.

## Verification

Before opening a pull request, run:

```bash
uv run pre-commit run --all-files
uv run pytest
```

The SDK clients under `sdk/` are generated packages. The root `zero_friction/`
package contains the unified client and shared configuration logic.

## Pull requests and security

Explain the motivation, implementation, and verification in the pull request.
Check that no API keys, tokens, passwords, or private keys were added. Report
accidental credential exposure immediately so it can be rotated.
