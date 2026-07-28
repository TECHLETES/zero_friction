#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${repo_root}"

echo "Bootstrapping the container workspace with uv..."
rm -rf .venv
uv sync --locked
uv tool install graphifyy

if [[ -d .git ]]; then
  uv run pre-commit install --install-hooks
fi

if ! uv run python -c "import ipykernel" >/dev/null 2>&1; then
  echo "Notebook execution in the container uses the local Python environment and needs ipykernel available there."
fi

if command -v op >/dev/null 2>&1; then
  echo "1Password CLI detected. Run 'op account list' if you need secret-backed examples."
else
  echo "1Password CLI is optional and not installed in this container."
fi

git config pull.rebase false && git config branch.autosetuprebase never

if [[ -f /tmp/host-gitconfig ]]; then
  host_git_user_name="$(git config --file /tmp/host-gitconfig --get user.name || true)"
  host_git_user_email="$(git config --file /tmp/host-gitconfig --get user.email || true)"

  if [[ -n "${host_git_user_name}" ]]; then
    git config --local user.name "${host_git_user_name}"
  fi
  if [[ -n "${host_git_user_email}" ]]; then
    git config --local user.email "${host_git_user_email}"
  fi
fi

gh auth setup-git || true

echo "Updating Codex CLI to the latest version..."
sudo npm install -g @openai/codex

echo "For Windows contributors, keep this repo inside the WSL filesystem before reopening it in the container for the best bind-mount performance."
