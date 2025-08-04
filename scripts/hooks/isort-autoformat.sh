#!/usr/bin/env bash
set -euo pipefail

FILES=("$@")

if [ ${#FILES[@]} -eq 0 ]; then
  echo "[isort-autoformat] No Python files staged for sorting."
  exit 0
fi

# Run isort with Black compatibility
isort --profile=black "${FILES[@]}"

# Re-add any changed files
CHANGED=0
for file in "${FILES[@]}"; do
  if ! git diff --quiet -- "$file"; then
    git add "$file"
    echo "[isort-autoformat] Sorted imports and re-staged: $file"
    CHANGED=1
  fi
done

# Optional: notify user to re-check commit
if [ $CHANGED -eq 1 ]; then
  echo "[isort-autoformat] Imports sorted. Review changes before final commit."
fi

exit 0
