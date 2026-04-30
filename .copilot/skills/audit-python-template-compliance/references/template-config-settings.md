# Template Config Assets

This reference acts as the copy-first index for config files shipped with this
skill.

When a target repository needs one of these config surfaces, copy the matching
shipped file as the base instead of recreating the file by hand. Prefer a
matching literal file shipped directly in this skill directory when one exists;
otherwise copy the file from `assets/config-template/`. After copying, replace
only the approved target-specific values.

## Generalization Rules

The asset files intentionally preserve the template's literal file structure,
formatting, comments, and current settings. Only these classes of values should
be generalized after the copy step:

- runtime dependencies and optional production dependencies
- target-repository identity values such as repo URLs or project names
- package, folder, file, and regex references that should point at the target
  repo rather than this template's `utils` and `example` packages
- repo-specific cache volume names or similar identifiers

If an asset file and the current repository diverge, the repository file is the
source of truth and the asset should be updated.

Do not synthesize these files from memory or rewrite them section-by-section
when a shipped base file exists.

## Asset Files

### Core Python Tooling

- [pyproject.toml literal template](../assets/config-template/pyproject.toml)
- [.pre-commit-config.yaml literal template](../assets/config-template/.pre-commit-config.yaml)

### GitHub Automation

- [CI workflow template](../assets/config-template/.github/workflows/ci.yml)
- [Dependabot template](../assets/config-template/.github/dependabot.yml)

### Devcontainer

- [devcontainer.json template](../assets/config-template/.devcontainer/devcontainer.json)
- [Dockerfile template](../assets/config-template/.devcontainer/Dockerfile)
- [post-create.sh template](../assets/config-template/.devcontainer/post-create.sh)

### VS Code Workspace

- [extensions.json template](../assets/config-template/.vscode/extensions.json)
- [settings.json template](../assets/config-template/.vscode/settings.json)

### Shell and Repo Hygiene

- [.envrc template](../assets/config-template/.envrc)
- [.detect-secrets.yaml template](../assets/config-template/.detect-secrets.yaml)
- [.gitattributes template](../assets/config-template/.gitattributes)
- [.gitignore template](../assets/config-template/.gitignore)

### Hook Scripts

- [nbstripout-autoadd.sh template](../assets/config-template/scripts/hooks/nbstripout-autoadd.sh)
- [run-pip-audit.sh template](../assets/config-template/scripts/hooks/run-pip-audit.sh)

## How To Use During Audits

1. Identify whether the needed config file is shipped directly with this skill
   or under `assets/config-template/`, then copy that file as the base.
2. Replace only the approved target-specific values and placeholders after the
   copy step.
3. Record findings when the target repo still diverges from the template's
   tooling, workflow, or structure beyond those approved generalization points.
4. Fall back to the live repository files only when this skill does not yet
   ship a base file for the config surface you need.
