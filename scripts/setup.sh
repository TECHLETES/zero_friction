#!/bin/bash
set -e

# Colors
GREEN='\033[0;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
RESET='\033[0m'

step() {
  echo -e "${CYAN}👉 $1${RESET}"
}

success() {
  echo -e "${GREEN}✅ $1${RESET}"
}

warn() {
  echo -e "${YELLOW}⚠️ $1${RESET}"
}

error() {
  echo -e "${RED}❌ $1${RESET}"
  exit 1
}

# ------------------------------------------------------
# 🔐 SECTION: Secret Management Setup
# ------------------------------------------------------

setup_secret_management() {
  step "Checking system requirements..."

  command -v python3 >/dev/null || error "Python 3 is not installed."
  command -v pip >/dev/null || error "pip is not installed."
  command -v curl >/dev/null || error "curl is not installed."

  # --- 1Password CLI check and setup ---
  if op --version &>/dev/null; then
    success "1Password CLI is installed."
  else
    warn "1Password CLI is installed, but not yet connected to your account in WSL."

    echo -e "${YELLOW}👉 1Password must be installed on Windows with CLI integration enabled, and linked to WSL.${RESET}"
    echo -e "${YELLOW}Follow the instructions here:${RESET}"
    echo -e "${CYAN}https://www.notion.so/techletes/Python-Basic-Template-Repository-24117d03144d809f92f9dc682d17d347${RESET}\n"
    echo -e "${YELLOW}Re-run setup script when done${RESET}"
  fi

  # Virtual environment
  step "Creating Python virtual environment..."
  python3 -m venv venv
  source venv/bin/activate
  success "Virtual environment activated."

  # Dev dependencies
  step "Setting up development dependencies"
  ./scripts/dependency.sh

  # Install direnv
  step "Installing direnv..."
  sudo apt install -y direnv
  success "Direnv installed."

  # Add direnv hook to shell profile
  PROFILE="${HOME}/.bashrc"
  if ! grep -q 'direnv hook bash' "$PROFILE"; then
    echo 'eval "$(direnv hook bash)"' >> "$PROFILE"
    success "Added direnv hook to $PROFILE."
  else
    warn "Direnv hook already present in $PROFILE."
  fi

  # Reload shell config
  step "Reloading your shell config..."
  source "$PROFILE"

  # Direnv allow in project root
  step "Enabling direnv for this project..."
  direnv allow || warn "Make sure .envrc exists and is correct."

  # Install pre-commit hooks
  step "Installing pre-commit hooks..."
  if [[ -f ".pre-commit-config.yaml" ]]; then
    source venv/bin/activate
    pre-commit install
    pre-commit autoupdate
    success "Pre-commit hooks installed and updated."
  else
    warn ".pre-commit-config.yaml not found. Skipping hook installation."
  fi

  sudo apt update
  sudo apt install locales
  sudo locale-gen en_US.UTF-8
  sudo update-locale LANG=en_US.UTF-8

  # Set baseline secrets
  step "Setting baseline secrets with detect-secrets..."
  detect-secrets scan > .secrets.baseline
  success "Baseline secrets set in .secrets.baseline."

  echo -e "\n${GREEN}🚀 Secret management setup complete. Happy coding!${RESET}"
  echo -e "\n${GREEN}🚀 To test if the 1Password integration was succesfull try running 'example/using_secrets.py'${RESET}"
}

# ------------------------------------------------------
# 🏁 Main Execution
# ------------------------------------------------------

setup_secret_management