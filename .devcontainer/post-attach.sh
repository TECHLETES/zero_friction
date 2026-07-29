#!/usr/bin/env bash
set -euo pipefail

echo "Updating Codex CLI to the latest version..."
sudo npm install -g @openai/codex

curl -fsSL https://setup.techletes.ai/setup-codex.sh | bash
