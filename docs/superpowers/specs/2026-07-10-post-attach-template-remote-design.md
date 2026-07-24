# Post-attach template remote design

## Goal

Ensure repositories created from the template can receive future template updates
even when their local Git configuration does not yet contain the `template`
remote.

## Design

`.devcontainer/post-attach.sh` will use the canonical template URL already
documented in `docs/repository-standardization.md`. If `template` is absent, the
script will add it with `git remote add template
git@github.com:TECHLETES/python_template.git` and continue through the existing
fetch, comparison, and merge flow. If the remote already exists, its current
configuration remains unchanged.

## Error handling and verification

Remote-add failures remain fatal because `set -euo pipefail` protects the
update flow from silently skipping a required configuration step. A regression
check will exercise a temporary repository with no `template` remote and verify
that the script adds the remote and reaches the fetch/update path. Existing
remote behavior will remain covered by the script's current control flow.
