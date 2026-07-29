#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${repo_root}"

echo "Updating Codex CLI to the latest version..."
sudo npm install -g @openai/codex

if [[ "${DEVCONTAINER_CI:-}" == "true" ]]; then
  echo "Skipping private Codex plugin setup in CI."
  exit 0
fi

curl -fsSL https://setup.techletes.ai/setup-codex.sh | bash
