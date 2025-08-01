#!/usr/bin/env bash
set -e

# Config
VENV_DIR="venv"

# Colors
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
RESET='\033[0m'

echo -e "${YELLOW}📦 Activating virtualenv...${RESET}"
if [ -f "$VENV_DIR/bin/activate" ]; then
    source "$VENV_DIR/bin/activate"
else
    echo "❌ No virtualenv found at $VENV_DIR. Run: python -m venv $VENV_DIR"
    exit 1
fi

echo -e "${YELLOW}🔍 Checking pip-tools...${RESET}"
if ! pip show pip-tools &>/dev/null; then
    echo -e "${YELLOW}➡️ Installing pip-tools...${RESET}"
    pip install pip-tools
else
    echo -e "${GREEN}✅ pip-tools is already installed.${RESET}"
fi

echo -e "${YELLOW}🧮 Compiling requirements.txt from requirements.in...${RESET}"
pip-compile requirements.in

echo -e "${YELLOW}📥 Installing compiled dependencies...${RESET}"
pip install -r requirements.txt

echo -e "${YELLOW}🔍 Verifying environment with pip check...${RESET}"
pip check

echo -e "${GREEN}✅ Setup complete! All dependencies are installed and compatible.${RESET}"
