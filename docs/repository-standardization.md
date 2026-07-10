# Existing repository standardization

Use this guide when an existing Python repository needs to adopt the Techletes Python template standards: devcontainers, uv, pyproject-based tool configuration, pre-commit, CI/CD, secret scanning and shared agent instructions.

<aside>
💡

**Tip**

Use the setup script below for Codex in WSL:

```bash
curl -fsSL https://setup.techletes.ai/setup-codex.sh | bash
```

The Techletes Superpowers plugin includes the `python-template-adoption` skill, which applies this guide to the target repository automatically. When working locally in the repository that should be updated with the template, open Codex and use the prompt:

```text
Make this repository conform the python template, use the techletes-superpowers:adopt-python-template skill.
```

</aside>

## Goal

Every active Python repository should have the same baseline developer experience:

- reproducible dependency management via `pyproject.toml` and `uv.lock`;
- devcontainer support for a consistent local environment;
- one source of truth for Black, Ruff, pytest, coverage, mypy, Bandit and pip-audit settings;
- mandatory pre-commit hooks;
- secret scanning through detect-secrets;
- consistent docs and AI/coding-agent instructions.

Do not rewrite application code during adoption unless a tool failure makes that necessary. The first adoption PR is about repository hygiene and development workflow.

## Recommended approach

Use `TECHLETES/python_template` as a long-lived Git remote named `template`.

Why:

- the first merge brings in the standard files;
- later template improvements can be pulled into existing repositories;
- each repo keeps its own application code and project-specific settings;
- template updates remain visible as normal Git diffs.

Avoid copying files manually from the template. Manual copying makes future updates harder to track.

## When to use this

Use this for active Python repositories that do not yet have the current Techletes baseline.

Do not use this blindly for:

- archived repositories;
- one-off scripts that will not be maintained;
- repositories with a non-Python primary stack;
- repositories where a client requires a different local development standard.

## First-time adoption workflow

Run this from the existing target repository.

```bash
git status
```

Stop if the working tree is not clean.

Create a branch:

```bash
git checkout -b chore/adopt-python-template
```

Add the template as a remote:

```bash
git remote add template git@github.com:TECHLETES/python_template.git
git fetch template
```

Merge the template without committing immediately:

```bash
git merge template/main --allow-unrelated-histories --no-commit
```

Resolve conflicts manually. Keep the application code from the target repository. Prefer the template version for generic tooling files unless the target repository has a clear project-specific reason to differ.

After conflicts are resolved, run the adoption helper:

```bash
uv run python scripts/adopt-template.py
```

If `uv` is not available yet, use system Python once:

```bash
python3 scripts/adopt-template.py
```

For explicit metadata:

```bash
python3 scripts/adopt-template.py \
  --name my-repository \
  --package my_package \
  --description "Short project description."
```

Then install and verify:

```bash
uv lock
uv sync
uv run pre-commit install --install-hooks
uv run pre-commit run --all-files
uv run pytest
```

Open the repository in VS Code and choose **Reopen in Container**. Verify that the devcontainer builds and `uv sync` succeeds.

Commit the adoption:

```bash
git add .
git commit -m "Adopt Techletes Python template baseline"
git push -u origin chore/adopt-python-template
```

Open a PR and include the checklist from this guide.

## Conflict resolution rules

### Keep from the target repository

- application source code;
- migrations;
- domain-specific docs;
- deployment-specific files if already used in production;
- existing CI jobs that deploy, release or run client-specific checks.

### Prefer from the template

- `.devcontainer/` baseline;
- `.pre-commit-config.yaml`;
- Black/Ruff/mypy/pytest/coverage/Bandit/pip-audit settings in `pyproject.toml`;
- `.secret.baseline` after regenerating it for the target repo;
- generic docs about setup, dependency management and code quality;
- `.github/copilot-instructions.md` and `AGENTS.md`, but adjust project context.

### Merge carefully

- `pyproject.toml`: preserve project dependencies; adopt template tool settings;
- `uv.lock`: regenerate with `uv lock` after conflicts;
- `.github/workflows/*`: keep existing deployment jobs, add or merge template quality checks;
- `.envrc` and `.env.template`: keep project-specific variables, preserve safe defaults;
- `README.md`: keep project overview, add setup/devcontainer instructions.

## Project-specific changes after merge

Minimum changes per target repo:

1. Update `[project]` metadata in `pyproject.toml`.
2. Move real runtime dependencies into `dependencies`.
3. Move developer-only packages into `[dependency-groups].dev`.
4. Set coverage source and mypy files to the actual package/module.
5. Set `.devcontainer/devcontainer.json` `name` to the repository name.
6. Update `AGENTS.md` with project context while keeping general Techletes engineering rules.
7. Regenerate `.secret.baseline` after checking that no real secrets are present.
8. Run all checks and fix only adoption-related failures.

## Updating later from the template

Once the `template` remote exists, updating is simple:

```bash
git checkout -b chore/update-python-template
git fetch template
git merge template/main
```

Resolve conflicts, then run:

```bash
python3 scripts/adopt-template.py
uv lock
uv sync
uv run pre-commit run --all-files
```

Commit and open a normal PR.

## PR checklist

Use this checklist in the first adoption PR:

- [ ] `template` remote added locally and documented in the PR.
- [ ] `pyproject.toml` contains project metadata, runtime dependencies and template tool config.
- [ ] `uv.lock` regenerated and committed.
- [ ] `.devcontainer/` builds successfully.
- [ ] `uv sync` succeeds inside the devcontainer.
- [ ] `uv run pre-commit run --all-files` succeeds or failures are explicitly documented.
- [ ] `uv run pytest` succeeds or missing/legacy tests are explicitly documented.
- [ ] `.secret.baseline` regenerated after checking no secrets are committed.
- [ ] Existing deployment workflows still exist.
- [ ] `README.md` contains the new setup path.
- [ ] `AGENTS.md` contains the right project context.

## Common problems

### Merge conflicts in `pyproject.toml`

Keep target repo dependencies. Adopt template tool config. Regenerate `uv.lock` instead of hand-editing it.

### Devcontainer uses the wrong project name

Run:

```bash
python3 scripts/adopt-template.py --name actual-repo-name
```

The devcontainer uses `${localWorkspaceFolderBasename}` for paths, so most path values should not need hardcoding.

### Pre-commit is too strict for a legacy repo

Do not disable the baseline globally. If needed, make the first PR explicit:

1. adopt the tooling;
2. document existing failures;
3. add temporary excludes with comments;
4. create follow-up issues to remove those excludes.

### Existing repo has `requirements.txt`

Move dependencies to `pyproject.toml`. Keep `requirements.txt` only if production deployment still requires it, and document that it is generated or legacy.

### Existing repo has Poetry/Pipenv

Choose one dependency manager. For Techletes Python repos, the target standard is `uv` with dependencies declared in `pyproject.toml`.

## Maintenance ownership

The template repository owns generic development tooling. Individual repositories own application dependencies, package names, deployment logic and project-specific documentation.
