# TECHLETES Python Template Baseline

Use this reference to decide what the target repository should look like when
it is aligned with the TECHLETES Python basic template.

## Source-of-Truth Order

When template sources disagree, prefer them in this order:

1. Executable config and automation
   `pyproject.toml`, `.pre-commit-config.yaml`, `.github/workflows/`,
  `.devcontainer/`, `scripts/`, especially `scripts/hooks/`
2. Contributor-facing contract docs
   `README.md`, `CONTRIBUTING.md`, `docs/`
3. Example code and tests

Do not copy stale prose over working automation. Align the docs to the actual
behavior unless the automation is clearly outdated and should be changed.

When you need exact comparison values for tool configuration, use
`template-config-settings.md` and the linked literal asset templates alongside
this baseline.

## Baseline Areas

### 1. Platform and Dependency Management

- Python baseline is `>=3.12,<4.0`.
- Dependency management is `uv`-first.
- Dependencies are declared in `pyproject.toml`.
- Locked dependency state is committed in `uv.lock`.
- Version constraints use bounded ranges such as `>=X.Y.Z,<NEXT_MAJOR.0.0`.
- Direct `pip install` workflows are not the project contract.
- The working environment is repo-local `.venv`.
- `uv sync` is the standard environment materialization command.

### 2. Project Configuration

- `pyproject.toml` is the single main configuration surface for packaging and
  Python tools.
- Production dependencies belong in `[project].dependencies`.
- Non-runtime groups belong in `[dependency-groups]`, especially `dev` and
  optional `extra` or project-specific groups.
- Tool configuration is centralized in `pyproject.toml` for Black, Ruff, mypy,
  pytest, coverage, Bandit, pip-audit, and related tooling.

### 3. Python Code Standards

- Type hints are required for functions and methods.
- Static typing is enforced with mypy, including
  `disallow_untyped_defs = true` and `disallow_incomplete_defs = true`.
- Runtime type checking is enabled in first-party packages through
  `beartype_this_package()` behind the `RUNTIME_TYPECHECK` environment toggle.
- Imports should be absolute and aligned with the target repo's package layout.
- Functions should stay small, testable, and focused.
- Public or non-obvious logic should have concise docstrings.

### 4. Quality Gates and Security

- Pre-commit is a required quality gate.
- The template baseline includes formatting, linting, type checking, tests, and
  security scanning.
- Black is configured with line length `88` and Python `3.12` target.
- Ruff is configured with line length `88`, Python `3.12` target, auto-fix
  enabled, and rule families equivalent to `E`, `F`, `I`, `B`, and `UP`.
- pytest is configured for strict markers/config plus coverage.
- Bandit is configured for security scanning.
- pip-audit exclusions are centralized in `pyproject.toml` under
  `[tool.pip-audit]`, not duplicated ad hoc in hooks or CI.
- Hook wrapper scripts under `scripts/hooks/` are part of the baseline when
  pre-commit or CI delegates shared logic there.
- Secret scanning uses `detect-secrets` plus a committed baseline file.
- Notebook cleanup and synchronization are part of the repo contract when the
  repo includes notebooks.

### 5. Secret Handling

- Plaintext secrets do not belong in code, notebooks, or committed `.env` files.
- Secret retrieval uses a project-local helper around 1Password CLI.
- The template helper is `utils.secrets.get_secret(...)`; a target repo may use
  a different first-party module name, but it should provide the same secure
  pattern.
- CI should consume GitHub-hosted secrets or equivalent CI secret injection,
  not direct 1Password login during runs.
- The repo should carry or document the secret-scanning baseline process.

### 6. CI Expectations

- CI installs dependencies with `uv sync`.
- CI runs the same core validation surface used locally, especially
  `uv run pre-commit run --all-files` and `uv run pytest`.
- Coverage generation is part of the expected validation path.
- If the repo ships a devcontainer, CI should include a smoke path or there
  should be an explicit reason it does not.

### 7. Devcontainer Expectations

- The template ships a devcontainer for cross-platform consistency.
- The image is Python 3.12 based and installs a pinned `uv`.
- The container uses a repo-local `.venv` rather than a global interpreter.
- Post-create bootstrap runs `uv sync --frozen`.
- Post-create installs pre-commit hooks when `.git` is present.
- Container caches use named volumes and should be renamed for the target repo.
- Windows guidance prefers WSL filesystem plus reopening in container.

### 8. Repo Workflow and Documentation

- The repo includes a setup path, usage guidance, dependency guidance, secret
  guidance, quality guidance, troubleshooting, and devcontainer docs when the
  repo supports those flows.
- `README.md` communicates the essential rules plainly.
- `CONTRIBUTING.md` explains environment setup, branch workflow, and local
  validation expectations.
- A branch helper script is part of the template baseline, though a target repo
  may implement that workflow differently if the behavior is documented.

### 9. GitHub and Workspace Metadata

- CI workflow definitions, dependency update automation, PR templates, and
  issue templates are part of the repo contract.
- Workspace settings and extension recommendations are part of the supported
  local development experience.
- Shell bootstrap and repo hygiene files such as `.envrc`, `.gitignore`, and
  `.gitattributes` should be audited because they affect everyday behavior.
- If the repo ships Copilot customizations, the repo should keep those assets
  versioned and installable from the repository.

## Generalize, Do Not Copy Literally

Some template values are examples and must be rewritten for the target repo.

| Template surface | Template example | Generalize for target repo |
| --- | --- | --- |
| First-party packages | `utils`, `example` | Use the target repo's actual importable packages across setuptools, pytest, coverage, mypy, beartype, and smoke tests |
| Project URLs | `TECHLETES/python_basic_template` | Point to the target repository's actual homepage, repo, and issues URLs |
| Devcontainer names | `python-basic-template` | Rename the container and cache volumes for the target repository |
| Excluded directories | `migrations`, `notebooks`, `.venv`, `tests` | Exclude the target repo's generated, vendored, or non-source directories instead of copying the template list blindly |
| Coverage scope | `utils`, `example` | Measure the target repo's production packages, not examples or template names |
| Secret references | `op://...` examples | Use the target team's real vault/item/field references |
| Example dependencies | Flask, requests, etc. | Keep only packages the target repo actually uses |

## Minimum File and Capability Baseline

Treat these as the default compliance targets unless the user approves an
exception.

- `pyproject.toml`
- `uv.lock`
- `.pre-commit-config.yaml`
- `.secret.baseline`
- `README.md`
- `CONTRIBUTING.md`
- `docs/0_setup.md`
- `docs/1_usage.md`
- `docs/2_secret_management.md`
- `docs/3_dependency_management.md`
- `docs/4_code_quality.md`
- `docs/5_pre_commit_hooks.md`
- `docs/6_pre_commit_troubleshooting.md`
- `docs/7_devcontainers.md`
- `docs/quickstart.md`
- `.github/workflows/ci.yml`
- `.github/dependabot.yml`
- `.github/pull_request_template.md`
- `.github/ISSUE_TEMPLATE/`
- `.github/copilot-instructions.md`
- `.devcontainer/devcontainer.json`, `Dockerfile`, and `post-create.sh` when
  the repo supports devcontainers
- `.vscode/extensions.json`
- `.vscode/settings.json`
- `.envrc`
- `.detect-secrets.yaml`
- `.gitignore`
- `.gitattributes`
- `CODE_OF_CONDUCT.md`
- `scripts/setup.sh`
- `scripts/new-branch.sh`
- `scripts/install-copilot-agents.sh`
- `scripts/hooks/nbstripout-autoadd.sh`
- `scripts/hooks/run-pip-audit.sh`
- `.copilot/agents/` and `.copilot/skills/` when the repo ships shared Copilot
  assets
- Repo-local first-party package initialization that enables runtime type checks
- Tests that mirror the production module layout for critical utilities

## Canonical Local Validation Commands

These are the template's default local validation commands and the closest
things to a compliance finish line:

```bash
uv sync
uv run pre-commit run --all-files
uv run pytest
uv run mypy . --config-file=pyproject.toml
```

If the target repo ships runnable services, add a service startup validation
step after the quality gates.
