#!/usr/bin/env bash
set -euo pipefail

# Configuration
export VENV_DIR="${VENV_DIR:-venv}"
export PYPROJECT="${PYPROJECT:-pyproject.toml}"
export PROD_LOCK="${PROD_LOCK:-requirements.txt}"
export DEV_LOCK="${DEV_LOCK:-requirements-dev.txt}"

# Hybrid dependency management script:
# Usage:
#   ./dependency.sh          # install both prod & dev
#   ./dependency.sh --prod   # install only production deps
#   ./dependency.sh --dev    # install only development deps

# Colors
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
RESET='\033[0m'

# Parse args
INSTALL_PROD=false
INSTALL_DEV=false

if [ $# -eq 0 ]; then
  INSTALL_PROD=true
  INSTALL_DEV=true
else
  for arg in "$@"; do
    case $arg in
      --prod)
        INSTALL_PROD=true
        ;;
      --dev)
        INSTALL_DEV=true
        ;;
      *)
        echo "❌ Unknown option: $arg"
        echo "Usage: $0 [--prod] [--dev]"
        exit 1
        ;;
    esac
  done
fi

echo -e "${YELLOW}⏳ Activating virtualenv at '${VENV_DIR}'...${RESET}"
if [ -f "${VENV_DIR}/bin/activate" ]; then
    # shellcheck disable=SC1090
    source "${VENV_DIR}/bin/activate"
else
    echo "❌ Virtualenv not found at '${VENV_DIR}'."
    echo "   Create one with: python -m venv ${VENV_DIR}"
    exit 1
fi

echo -e "${YELLOW}🔍 Ensuring pip-tools is installed...${RESET}"
if ! pip show pip-tools &>/dev/null; then
    echo -e "${YELLOW}➡️ Installing pip-tools...${RESET}"
    pip install pip-tools
else
    echo -e "${GREEN}✅ pip-tools is already installed.${RESET}"
fi

if [ "$INSTALL_PROD" = true ]; then
  echo -e "${YELLOW}🧮 Compiling production lockfile from '${PYPROJECT}'...${RESET}"
  pip-compile "${PYPROJECT}" \
      --output-file="${PROD_LOCK}" \
      --generate-hashes

  echo -e "${YELLOW}📥 Installing production dependencies...${RESET}"
  pip install --require-hashes -r "${PROD_LOCK}"
fi

if [ "$INSTALL_DEV" = true ]; then
  echo -e "${YELLOW}🛠 Compiling development lockfile from '${PYPROJECT}' extras...${RESET}"
  pip-compile "${PYPROJECT}" \
      --extra=dev \
      --output-file="${DEV_LOCK}" \
      --generate-hashes

  echo -e "${YELLOW}📥 Installing development dependencies...${RESET}"
  pip install --require-hashes -r "${DEV_LOCK}"
fi

echo -e "${YELLOW}🔎 Verifying installed packages...${RESET}"
pip check

echo -e "${GREEN}🎉 Setup complete!${RESET}"
[ "$INSTALL_PROD" = true ] && echo -e "${GREEN}  • Production deps from ${PROD_LOCK}${RESET}"
[ "$INSTALL_DEV" = true ] && echo -e "${GREEN}  • Dev deps from ${DEV_LOCK}${RESET}"
