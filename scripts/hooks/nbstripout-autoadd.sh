#!/usr/bin/env bash
set -e

# Run nbstripout on all files passed by pre-commit
nbstripout "$@"

# Re-add any modified .ipynb files to the index
modified=$(git ls-files -m '*.ipynb') || true

if [ -n "$modified" ]; then
  echo "🔁 Re-staging modified notebooks:"
  echo "$modified"
  git add $modified
fi
