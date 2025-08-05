#!/usr/bin/env bash
set -euo pipefail

# Complete development environment setup script for Python Basic Template
# This script sets up everything a developer needs to start working on the project:
# - Virtual environment
# - Hybrid dependency management (production + development)
# - Pre-commit hooks
# - Secret management with 1Password
# - Development tools configuration

# Colors
GREEN='\033[0;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
RESET='\033[0m'

step()   { echo -e "${CYAN}👉 $1${RESET}"; }
success(){ echo -e "${GREEN}✅ $1${RESET}"; }
warn()   { echo -e "${YELLOW}⚠️ $1${RESET}"; }
error()  { echo -e "${RED}❌ $1${RESET}"; exit 1; }
info()   { echo -e "${BLUE}ℹ️ $1${RESET}"; }
section(){
  echo -e "\n${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo -e "${BLUE}🔧 $1${RESET}"
  echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
}

setup_development_environment() {
  section "SYSTEM REQUIREMENTS CHECK"
  step "Verifying required system packages..."
  info "Checking for Python 3..."
  command -v python3 >/dev/null || error "Python 3 is not installed. Please install Python 3.12+."
  PYTHON_VERSION=$(python3 --version | cut -d' ' -f2)
  success "Python $PYTHON_VERSION found."

  info "Checking for pip..."
  command -v pip >/dev/null || error "pip is not installed. Please install pip."
  PIP_VERSION=$(pip --version | cut -d' ' -f2)
  success "pip $PIP_VERSION found."

  info "Checking for curl..."
  command -v curl >/dev/null || error "curl is not installed. Please install curl."
  success "curl is available."

  info "Checking for git..."
  command -v git >/dev/null || error "git is not installed. Please install git."
  GIT_VERSION=$(git --version | cut -d' ' -f3)
  success "git $GIT_VERSION found."

  section "VIRTUAL ENVIRONMENT SETUP"
  step "Creating Python virtual environment..."
  if [ -d "$VENV_DIR" ]; then
    warn "Virtual environment already exists."
    echo -e "${YELLOW}Choose an option:${RESET}"
    echo "  1) Skip creating a new virtual environment (keep existing)"
    echo "  2) Remove old one and create a new virtual environment"
    read -p "Enter 1 or 2 [default: 2]: " VENV_CHOICE
    VENV_CHOICE=${VENV_CHOICE:-2}
    if [ "$VENV_CHOICE" = "1" ]; then
      success "Keeping existing virtual environment."
      source $VENV_DIR/bin/activate
    elif [ "$VENV_CHOICE" = "2" ]; then
      warn "Removing old virtual environment..."
      rm -rf $VENV_DIR
      python3 -m venv $VENV_DIR
      source $VENV_DIR/bin/activate
      success "Virtual environment created and activated."
    else
      error "Invalid choice. Exiting."
    fi
  else
    python3 -m venv $VENV_DIR
    source $VENV_DIR/bin/activate
    success "Virtual environment created and activated."
  fi

  step "Upgrading pip in virtual environment..."
  pip install --upgrade pip
  PIP_NEW_VERSION=$(pip --version | cut -d' ' -f2)
  success "pip upgraded to version $PIP_NEW_VERSION."

  section "HYBRID DEPENDENCY MANAGEMENT"
  info "This project uses a hybrid dependency approach:"
  info "  • Production deps  : declared in $PYPROJECT → locked to $PROD_LOCK"
  info "  • Development deps : declared in $PYPROJECT [project.optional-dependencies.dev] → locked to $DEV_LOCK"

  step "Installing dependency management tools (pip-tools, build, wheel)..."
  pip install pip-tools build wheel
  success "pip-tools, build, and wheel installed."

  step "Running dependency setup script (compiles & installs deps)..."
  ./scripts/dependency.sh
  success "Production and development dependencies installed."

  section "SYSTEM LOCALE CONFIGURATION"
  step "Updating system locales..."
  sudo apt update
  sudo apt install -y locales
  sudo locale-gen en_US.UTF-8
  sudo update-locale LANG=en_US.UTF-8
  success "System locales configured."

  section "DIRENV SETUP"
  step "Installing direnv for environment variable management..."
  sudo apt install -y direnv
  success "direnv installed."
  step "Configuring direnv shell integration..."
  PROFILE="${HOME}/.bashrc"
  if ! grep -q 'direnv hook bash' "$PROFILE"; then
    echo 'eval "$(direnv hook bash)"' >> "$PROFILE"
    success "Added direnv hook to $PROFILE."
  else
    warn "direnv hook already present in $PROFILE."
  fi
  success "Shell configuration reloaded."
  step "Enabling direnv for this project..."
  if [ -f ".envrc" ]; then
    direnv allow
    success "direnv enabled for this project."
  else
    warn ".envrc file not found. direnv configuration may be incomplete."
  fi

  section "PRE-COMMIT HOOKS SETUP"
  step "Installing pre-commit hooks..."
  if [[ -f ".pre-commit-config.yaml" ]]; then
    pre-commit install
    success "Pre-commit hooks installed."
    step "Updating pre-commit hook repositories..."
    pre-commit autoupdate
    success "Pre-commit hooks updated."
    step "Running pre-commit on all files (initial check)..."
    pre-commit run --all-files || warn "Some pre-commit checks failed (initial run)."
    info "Pre-commit will now run automatically on commits."
  else
    warn ".pre-commit-config.yaml not found. Skipping hooks install."
  fi

  section "SECRET MANAGEMENT SETUP"
  step "Checking 1Password CLI integration..."
  if op --version &>/dev/null; then
    success "1Password CLI is installed."
    step "Testing 1Password connection..."
    if op account list &>/dev/null; then
      success "1Password CLI is connected."
    else
      warn "1Password CLI not signed in."
    fi
  else
    error "1Password CLI not found. Install & configure before secrets workflow."
    exit 1
  fi
  step "Initializing secrets baseline with detect-secrets..."
  if [ -f ".secrets.baseline" ]; then
    warn "Existing .secrets.baseline found; backing up."
    cp .secrets.baseline .secrets.baseline.bak
  fi
  detect-secrets scan > .secrets.baseline
  success "Secrets baseline created."
  detect-secrets audit .secrets.baseline
  success "Secrets configuration verified."

  section "DEVELOPMENT TOOLS VERIFICATION"
  step "Verifying development tools..."
  for tool in black ruff mypy pytest beartype; do
    info "Checking $tool..."
    "pip show $tool" &>/dev/null && success "$tool is installed." || warn "$tool missing."
  done

  section "PROJECT VALIDATION"
  step "Running final project validation..."
  info "Checking imports..."
  python - <<'PYCODE'
import utils.secrets, utils.utils
print("✅ All project modules import successfully")
PYCODE
  info "Syntax-checking all Python files..."
  find . -name "*.py" -not -path "./$VENV_DIR/*" -exec python -m py_compile {} \;
  success "Python syntax valid."
  if [ -s "$PROD_LOCK" ]; then
    info "Verifying production dependencies..."
    pip check
    success "Dependencies compatible."
  else
    info "No prod dependencies to verify."
  fi

  section "SETUP COMPLETE"
  echo -e "\n${GREEN}🎉 DEVELOPMENT ENVIRONMENT SETUP COMPLETE!${RESET}\n"
  echo -e "${BLUE}Installed:${RESET}"
  echo "  • $VENV_DIR/"
  echo "  • Production deps ($PROD_LOCK)"
  echo "  • Dev tools ($DEV_LOCK)"
  echo "  • Pre-commit hooks"
  echo "  • Secret baseline (.secrets.baseline)"
  echo "  • direnv"
  echo -e "\n${BLUE}Next steps:${RESET}"
  echo " 1. Restart terminal or run: source ~/.bashrc"
  echo " 2. Test with: python example/using_secrets.py"
  echo " 3. Start coding!"
}

# Main
setup_development_environment
