# Daily Usage

Do all development from the VS Code window attached to the devcontainer. Open
the integrated terminal and run commands with `uv run`; the container manages
the repository-local `.venv` for you.

## Daily workflow

1. Reopen the repository in the devcontainer and wait for the bootstrap to
   finish.
2. Create or modify Python modules, notebooks, and documentation.
3. Run targeted tests and quality checks.
4. Stage and commit changes. Pre-commit runs automatically.

```bash
uv run pytest
uv run black .
uv run ruff check . --fix
uv run mypy . --config-file=pyproject.toml
uv run pre-commit run --all-files
git add <files>
git commit -m "Describe the change"
```

The container already has the project dependencies and tools installed. Do not
activate `.venv` manually and do not install packages with `pip`.

## Dependencies

1. Edit `pyproject.toml` with the required version range.
2. Regenerate the lock file and sync the container:

```bash
uv lock
uv sync
```

You can also use `uv add <package>` from the container terminal when that
matches the repository’s dependency policy. Commit both `pyproject.toml` and
`uv.lock` when they change.

## Notebooks

The devcontainer installs the Jupyter extension and the project includes
`ipykernel` in its development dependencies. Select the project interpreter
from `.venv` as the notebook kernel. Notebook outputs are stripped by the
repository hooks.

## Shared Copilot agents

Install the repository’s optional agents from the attached container:

```bash
./scripts/install-copilot-agents.sh
```

## If the container needs a refresh

- After Dockerfile or devcontainer configuration changes, run **Dev
  Containers: Rebuild Container**.
- After dependency changes, run `uv lock && uv sync`.
- If the environment remains inconsistent, use **Rebuild Container Without
  Cache**.

See [pre-commit troubleshooting](6_pre_commit_troubleshooting.md) when a
commit hook blocks a commit.
