#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${repo_root}"

if ! git rev-parse --git-dir >/dev/null 2>&1; then
  exit 0
fi

if ! git remote get-url template >/dev/null 2>&1; then
  echo "Template remote not configured; skipping template update check."
  exit 0
fi

current_branch="$(git symbolic-ref --quiet --short HEAD || true)"
if [[ -z "${current_branch}" ]]; then
  echo "Detached HEAD; skipping template update check."
  exit 0
fi

echo "Checking for updates from template/main..."
git fetch template --prune

if ! git show-ref --verify --quiet refs/remotes/template/main; then
  echo "Template remote exists but template/main is not available; skipping."
  exit 0
fi

ahead_count="$(git rev-list --count HEAD..template/main)"
if [[ "${ahead_count}" -eq 0 ]]; then
  echo "Template is up to date."
  exit 0
fi

echo "Template has ${ahead_count} new commit(s)."

if [[ -n "$(git status --porcelain=v1)" ]]; then
  echo "Working tree is dirty; skipping automatic merge from template/main."
  echo "Review and merge template/main manually when you are ready."
  exit 0
fi

echo "Attempting to merge template/main into ${current_branch}..."
if git pull --no-rebase template main; then
  echo "Template updates merged successfully."
else
  echo "Template merge needs manual resolution."
  echo "Resolve conflicts, complete the merge, then continue working."
fi
