# Template Config Assets

This reference now acts as an index to generalized literal config files stored
under `assets/config-template/`.

Use these asset files when you need to compare a target repository against the
template's actual config shape, syntax, comments, and default settings.

## Generalization Rules

The asset files intentionally preserve the template's literal file structure,
formatting, and most current settings. Only these classes of values are
generalized with comments or placeholders:

- runtime dependencies and optional production dependencies
- target-repository identity values such as repo URLs or project names
- package, folder, file, and regex references that should point at the target
  repo rather than this template's `utils` and `example` packages
- repo-specific cache volume names or similar identifiers

If an asset file and the current repository diverge, the repository file is the
source of truth and the asset should be updated.

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

1. Start by comparing the target repo's controlling config files against these
   literal templates.
2. Treat placeholders and comments in the asset files as required
   generalization points, not deviations.
3. Record findings when the target repo diverges from the template's tooling,
   workflow, or structure beyond those approved generalization points.
4. Fall back to the live repository files when an asset has not yet been added
   for a config surface you need.
