#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${repo_root}"

# Expose the host ~/.copilot directory inside the devcontainer.
# This assumes devcontainer.json mounts the host home directory to /host-home.
if [[ -d /host-home ]]; then
  mkdir -p /host-home/.copilot

  container_copilot_dir="${HOME}/.copilot"
  host_copilot_dir="/host-home/.copilot"

  if [[ -L "${container_copilot_dir}" ]]; then
    echo "Copilot directory symlink already exists at ${container_copilot_dir}."
  elif [[ -e "${container_copilot_dir}" ]]; then
    echo "Copilot directory already exists at ${container_copilot_dir}; not replacing it."
    echo "To use the host Copilot directory, move this folder aside and link it to ${host_copilot_dir}."
  else
    ln -s "${host_copilot_dir}" "${container_copilot_dir}"
    echo "Linked ${container_copilot_dir} to ${host_copilot_dir}."
  fi
else
  echo "Host home mount /host-home not found; skipping Copilot directory link."
fi

echo "Bootstrapping the container workspace with uv..."
uv --version
python --version

uv sync --frozen

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
