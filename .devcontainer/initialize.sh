#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${repo_root}"

if [[ ! -f .env ]]; then
  if [[ -f .env.template ]]; then
    cp .env.template .env
    echo "Created .env from .env.template."
  else
    echo "ERROR: No .env or .env.template found." >&2
    exit 1
  fi
fi
