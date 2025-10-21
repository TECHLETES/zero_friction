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
    # Compile development dependencies (core + extra + dev)
    pip-compile "$PYPROJECT_FILE" --extra=dev --extra=extra --output-file="$TEMP_LOCKFILE" --generate-hashes --allow-unsafe --strip-extras --quiet > /dev/null
elif [[ "$LOCKFILE_TO_CHECK" == "requirements-slim.txt" ]]; then
    # Compile core dependencies only
    pip-compile "$PYPROJECT_FILE" --output-file="$TEMP_LOCKFILE" --generate-hashes --strip-extras --quiet > /dev/null
else
    # Compile full production dependencies (core + extra)
    pip-compile "$PYPROJECT_FILE" --extra=extra --output-file="$TEMP_LOCKFILE" --generate-hashes --allow-unsafe --strip-extras --quiet > /dev/null
fi

# Function to normalize a requirements file by removing the header comments
# and keeping only the actual dependency lines
normalize_requirements() {
    local file="$1"
    # Skip lines that start with # and extract only the actual requirements
    grep -v '^#' "$file" | grep -v '^$' | sort
}

# Compare the normalized content (excluding headers)
if ! diff -q <(normalize_requirements "$LOCKFILE_TO_CHECK") <(normalize_requirements "$TEMP_LOCKFILE") > /dev/null; then
    echo "❌ Error: '$LOCKFILE_TO_CHECK' has been manually edited or is out of date." >&2
    echo "   It does not match the expected output based on '$PYPROJECT_FILE'." >&2
    echo "   To fix this, run 'rm $LOCKFILE_TO_CHECK' and then './scripts/dependency.sh' and commit the resulting changes." >&2
    rm "$TEMP_LOCKFILE" # Always clean up
    exit 1
fi

# If diff exits with 0, the files are identical.
echo "✅ '$LOCKFILE_TO_CHECK' is valid and up-to-date."
rm "$TEMP_LOCKFILE" # Always clean up
exit 0
