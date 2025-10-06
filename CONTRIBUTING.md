
# Contributing to Zero Friction SDK

Thanks for your interest in contributing! This document explains how to get the project running locally, the development workflow we prefer, and what we look for in patches and pull requests. If you're unsure about anything, open an issue and we'll help.

## Table of contents

- Getting started
- Branching & commits
- Development workflow
- Testing
- Code style & linting
- Pull request checklist
- Security & sensitive data
- Support

## Getting started

1. Fork the repository and clone your fork locally.

2. Create and activate a Python virtual environment (we recommend venv):

```bash
python -m venv .venv
source .venv/bin/activate
```

3. Install project dependencies (this repository uses pip-tools and a helper script):

```bash
# compile and install production deps
./dependency.sh
```

4. Copy the environment template and fill in secrets locally (do NOT commit .env):

```bash
cp .env.template .env
# then edit .env and set actual values
```

The key environment variables used by the SDK are listed in `.env.template`. Keep secrets out of git and your PRs.

## Branching & commits

- Use feature branches derived from `main` or the default branch. Name branches with a short prefix: `feature/`, `fix/`, or `chore/` (e.g. `feature/add-foo-client`).
- Keep commits small and focused. Use imperative commit messages (e.g. `Add caching to api client`).
- Link issues in commit messages when appropriate: `Fixes #123`.

## Development workflow

1. Create a branch for your change.
2. Run tests and linters locally (see Testing section).
3. Open a pull request with a clear description of the change, the motivation, and any relevant screenshots or logs.
4. Address review feedback and update the PR until it is approved.

## Testing

We use the test suites included in the SDK clients. Run tests with `pytest` from the repository root. Example:

```bash
pytest -q
```

Aim to add or update unit tests for behavior you change. Keep tests fast and deterministic.

## Code style & linting

Follow the existing project style. If the project contains linters or formatters (e.g. `black`, `ruff`, `flake8`), run them before submitting. If not present, keep code clear and consistent with surrounding modules.

If you add new dependencies, prefer lightweight, well-maintained packages and add them to `pyproject.toml` following the repo conventions.

## Pull request checklist

Before requesting review make sure:

- [ ] Branch is up to date with `main` (rebase or merge as your team prefers).
- [ ] All tests pass locally.
- [ ] No sensitive values were accidentally added (e.g. `.env`, API keys).
- [ ] Changelog entry included if the change affects users.
- [ ] PR description explains the why and how of the change.

Maintainers will review, request changes if necessary, and merge when ready.

## Security & sensitive data

- Never commit secrets, tokens, or private keys. Use `.env` locally and `.env.template` in the repo as guidance.
- If you accidentally commit sensitive data, immediately rotate the credentials and open an issue or contact maintainers.

## Support

If you need help, open an issue describing the problem with steps to reproduce, or join the project channel (if available) and ping the maintainers.

Thanks for contributing — we appreciate your help in improving the Zero Friction SDK!

