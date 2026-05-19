#!/bin/bash
# Validate that branch names follow the required naming convention
# This ensures all branches start with: feature/, bug/, refactor/, security/, breaking/, question/, or docs/
# Works both locally and in CI/CD environments (GitHub Actions)

set -e

# Get current branch name
# In local environment: use git rev-parse
# In GitHub Actions: use GITHUB_HEAD_REF environment variable
if [ -n "$GITHUB_HEAD_REF" ]; then
    # Running in GitHub Actions
    BRANCH_NAME="$GITHUB_HEAD_REF"
else
    # Running locally
    BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
fi

# Skip validation if we're in a detached HEAD state and not in GitHub Actions
# (shouldn't happen, but safety check)
if [ "$BRANCH_NAME" = "HEAD" ] && [ -z "$GITHUB_HEAD_REF" ]; then
    echo "⏭️  Skipping branch name validation (detached HEAD state)"
    exit 0
fi

# Valid prefixes (case-insensitive)
VALID_PREFIXES=("feature/" "bug/" "refactor/" "security/" "breaking/" "question/" "docs/")

# Allow protected branches (main, staging, etc.) specifically for CI/CD or direct maintenance
if [[ "$BRANCH_NAME" == "main" || "$BRANCH_NAME" == "staging" || "$BRANCH_NAME" == "master" ]]; then
    exit 0
fi

# Convert branch name to lowercase for comparison
BRANCH_LOWER=$(echo "$BRANCH_NAME" | tr '[:upper:]' '[:lower:]')

# Check if branch matches any valid prefix
VALID=false
for prefix in "${VALID_PREFIXES[@]}"; do
    if [[ "$BRANCH_LOWER" == "$prefix"* ]]; then
        VALID=true
        break
    fi
done

# If invalid, show error and exit
if [ "$VALID" = false ]; then
    cat << EOF >&2

❌ BRANCH NAME VALIDATION FAILED

Current branch: "$BRANCH_NAME"

Branch names must start with one of:
  • feature/    (new features)
  • bug/        (bug fixes)
  • refactor/   (code refactoring)
  • security/   (security updates)
  • breaking/   (breaking changes)
  • question/   (questions/discussions)
  • docs/       (documentation updates)

Examples of valid branch names:
  • feature/add-login-page
  • bug/fix-memory-leak
  • refactor/utils-module
  • security/update-dependencies
  • breaking/v2-api-redesign
  • question/api-design-question
  • docs/setup-guide

To rename your branch, run:
  git branch -m <new-branch-name>

Then commit again.
EOF
    exit 1
fi

exit 0
