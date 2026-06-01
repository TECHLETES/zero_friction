#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${repo_root}"

echo "Bootstrapping the container workspace with uv..."
uv --version
python --version

# uv venv .venv
uv sync --frozen --all-groups
uv tool install graphifyy

# (Added by Michaël: 7-5-2026)
# load environment variables from .envrc
source .envrc

# (Added by Michaël: 7-5-2026)
# ensure .envrc is sourced automatically when opening new terminals inside the container
if ! grep -q "source .envrc" ~/.bashrc 2>/dev/null; then
  echo "# Auto-source .envrc for this workspace" >> ~/.bashrc
  echo "if [[ -f \"${repo_root}/.envrc\" ]]; then source \"${repo_root}/.envrc\"; fi" >> ~/.bashrc
fi

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

echo "For Windows contributors, keep this repo inside the WSL filesystem before reopening it in the container for the best bind-mount performance."
