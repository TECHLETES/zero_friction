#!/usr/bin/env bash
set -euo pipefail

docker pull ghcr.io/techletes/devcontainer:latest

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${repo_root}"

# Bind mounts must have their host-side sources available before the container
# starts. These tools are installed in the container, so empty host directories
# are sufficient for contributors who do not use them locally.
mkdir -p "${HOME}/.codex" "${HOME}/.config/gh"
if [[ ! -e "${HOME}/.gitconfig" ]]; then
  touch "${HOME}/.gitconfig"
fi

if [[ ! -f .env ]]; then
  if [[ -f .env.template ]]; then
    cp .env.template .env
    echo "Created .env from .env.template."
  else
    echo "ERROR: No .env or .env.template found." >&2
    exit 1
  fi
fi
