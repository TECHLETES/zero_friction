#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${repo_root}"

if [[ ! -f .env && -f .env.template ]]; then
  cp .env.template .env
  echo "Created .env from .env.template for local devcontainer startup."
elif [[ -f .env ]]; then
  source .env
else
  echo "No .env file found and no .env.template to copy from. Please create a .env file based on the .env.template for local development."
fi

echo "Bootstrapping the container workspace with uv..."
uv --version
python --version

if [[ -d .venv ]]; then
  if [[ -f .venv/pyvenv.cfg ]]; then
    venv_home="$(grep -E '^home = ' .venv/pyvenv.cfg | cut -d= -f2- | sed 's/^ *//;s/ *$//')"
    if [[ -n "${venv_home}" ]]; then
      if python3 -c 'import sys; print(sys.executable)' >/dev/null 2>&1; then
        current_python="$(python3 -c 'import sys; print(sys.executable)')"
      elif python -c 'import sys; print(sys.executable)' >/dev/null 2>&1; then
        current_python="$(python -c 'import sys; print(sys.executable)')"
      fi
      if [[ -n "${current_python-}" && "${venv_home}" != "${current_python}" ]]; then
        echo "Detected existing .venv built with ${venv_home}; removing so uv sync can recreate it for the devcontainer."
        rm -rf .venv
      fi
    fi
  fi
fi

uv sync
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

echo "For Windows contributors, keep this repo inside the WSL filesystem before reopening it in the container for the best bind-mount performance."
