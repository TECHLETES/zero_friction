#!/usr/bin/env bash
set -euo pipefail

# This script verifies that a lockfile is up-to-date with pyproject.toml.
# It's designed to be called by a pre-commit hook.
# It accepts one argument: the path to the lockfile to check (e.g., requirements.txt)

# --- Configuration ---
LOCKFILE_TO_CHECK="$1"
PYPROJECT_FILE="pyproject.toml"
TEMP_LOCKFILE=$(mktemp) # Creates a secure temporary file

# --- Logic ---
echo "Verifying integrity of '$LOCKFILE_TO_CHECK'..."

# Determine which compile command to run based on the filename
if [[ "$LOCKFILE_TO_CHECK" == "requirements-dev.txt" ]]; then
    # Compile development dependencies
    pip-compile "$PYPROJECT_FILE" --extra=dev --output-file="$TEMP_LOCKFILE" > /dev/null
else
    # Compile production dependencies by default
    pip-compile "$PYPROJECT_FILE" --output-file="$TEMP_LOCKFILE" > /dev/null
fi

# Compare the officially generated temp file with the one being committed.
# The `diff -q` command is quiet and exits with a non-zero status if files differ.
if ! diff -q "$LOCKFILE_TO_CHECK" "$TEMP_LOCKFILE"; then
    echo "❌ Error: '$LOCKFILE_TO_CHECK' has been manually edited or is out of date." >&2
    echo "   It does not match the expected output based on '$PYPROJECT_FILE'." >&2
    echo "   To fix this, run 'rm requirements.txt' and then './scripts/dependency.sh' and commit the resulting changes." >&2
    rm "$TEMP_LOCKFILE" # Always clean up
    exit 1
fi

# If diff exits with 0, the files are identical.
echo "✅ '$LOCKFILE_TO_CHECK' is valid and up-to-date."
rm "$TEMP_LOCKFILE" # Always clean up
exit 0
