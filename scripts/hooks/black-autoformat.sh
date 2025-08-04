#!/usr/bin/env bash
set -euo pipefail

FILES=("$@")

if [ ${#FILES[@]} -eq 0 ]; then
  echo "[black-autoformat] No Python files staged for formatting."
  exit 0
fi

# Run Black on provided files
black --quiet "${FILES[@]}"

# Re-add any changed files
CHANGED=0
for file in "${FILES[@]}"; do
  if ! git diff --quiet -- "$file"; then
    git add "$file"
    echo "[black-autoformat] Reformatted and re-staged: $file"
    CHANGED=1
  fi
done

# Optional: notify user to re-check commit
if [ $CHANGED -eq 1 ]; then
  echo "[black-autoformat] Formatting applied. Review changes before final commit."
fi

exit 0
