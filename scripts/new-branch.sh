#!/bin/bash

# Quick script to start a new feature branch
# Usage: ./scripts/new-feature.sh feature "responsive navigation"
# Usage: ./scripts/new-feature.sh fix "sidebar mobile issue"

if [ $# -ne 2 ]; then
    echo "Usage: $0 <type> <description>"
    echo "Types: feature, fix, docs, ui, devops"
    echo "Example: $0 feature 'add user dashboard'"
    exit 1
fi

TYPE=$1
DESCRIPTION=$2

# Convert description to branch-safe format
BRANCH_NAME=$(echo "$DESCRIPTION" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')

FULL_BRANCH="${TYPE}/${BRANCH_NAME}"

echo "cleaning up old branches"
# Prune remote-tracking branches (remove references to remote branches deleted on GitHub)

git remote prune origin
echo "Pruned remote-tracking branches"

# (Optional) Delete all local branches that have been merged into main (except main itself)
(git branch --merged main | grep -v "main" | xargs -n 1 git branch -d) || true
echo "Removed merged local branches"

echo "Creating branch: $FULL_BRANCH"


# Create and switch to new branch from current HEAD (preserves local changes)
git checkout -b "$FULL_BRANCH"

echo "✅ Ready to work on: $FULL_BRANCH"
echo ""
echo "When you're done:"
echo "1. git add ."
echo "2. git commit -m \"${TYPE}: ${DESCRIPTION}\""
echo "3. git push origin $FULL_BRANCH"
echo "4. Create PR on GitHub"
