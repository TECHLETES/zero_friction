# Template Config Assets

This reference acts as the copy-first index for config files provided by this
skill.

When a target repository needs one of these config surfaces, copy the matching
base file instead of recreating the file by hand. Prefer a matching literal
file shipped directly in this skill directory when one exists. Otherwise use
the repo-sourced assets listed in
`../assets/config-template-manifest.txt`, which the installer materializes into
`../assets/config-template/`. After copying, replace only the approved
target-specific values.

## Generalization Rules

The asset files intentionally preserve the template's literal file structure,
formatting, comments, and current settings. Only these classes of values should
be generalized after the copy step:

- runtime dependencies and optional production dependencies
- target-repository identity values such as repo URLs or project names
- package, folder, file, and regex references that should point at the target
  repo rather than this template's `utils` and `example` packages
- repo-specific cache volume names or similar identifiers

If a listed asset and the current repository diverge, the repository file is
the source of truth and the manifest or materialization logic should be
updated.

Do not synthesize these files from memory or rewrite them section-by-section
when a shipped base file exists.

## Repo Asset Manifest

The installer copies these repository paths into `assets/config-template/` for
this skill at install time:

- `pyproject.toml`
- `.pre-commit-config.yaml`
- `.github/workflows/ci.yml`
- `.github/dependabot.yml`
- `.devcontainer/devcontainer.json`
- `.devcontainer/Dockerfile`
- `.devcontainer/post-create.sh`
- `.vscode/extensions.json`
- `.vscode/settings.json`
- `.envrc`
- `.detect-secrets.yaml`
- `.gitattributes`
- `.gitignore`
- `scripts/hooks/nbstripout-autoadd.sh`
- `scripts/hooks/run-pip-audit.sh`

## Asset Files

### Core Python Tooling

- `../assets/config-template/pyproject.toml`
- `../assets/config-template/.pre-commit-config.yaml`

### GitHub Automation

- `../assets/config-template/.github/workflows/ci.yml`
- `../assets/config-template/.github/dependabot.yml`

### Devcontainer

- `../assets/config-template/.devcontainer/devcontainer.json`
- `../assets/config-template/.devcontainer/Dockerfile`
- `../assets/config-template/.devcontainer/post-create.sh`

### VS Code Workspace

- `../assets/config-template/.vscode/extensions.json`
- `../assets/config-template/.vscode/settings.json`

### Shell and Repo Hygiene

- `../assets/config-template/.envrc`
- `../assets/config-template/.detect-secrets.yaml`
- `../assets/config-template/.gitattributes`
- `../assets/config-template/.gitignore`

### Hook Scripts

- `../assets/config-template/scripts/hooks/nbstripout-autoadd.sh`
- `../assets/config-template/scripts/hooks/run-pip-audit.sh`

## How To Use During Audits

1. Identify whether the needed config file is shipped directly with this skill
   or materialized under `assets/config-template/`, then copy that file as the
   base.
2. Replace only the approved target-specific values and placeholders after the
   copy step.
3. Record findings when the target repo still diverges from the template's
   tooling, workflow, or structure beyond those approved generalization points.
4. Update `assets/config-template-manifest.txt` when a new repo-backed config
   surface should be included for future audits.
