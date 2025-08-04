#!/bin/bash
set -e

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

info() {
  echo -e "${BLUE}ℹ️ $1${RESET}"
}

section() {
  echo -e "\n${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo -e "${BLUE}🔧 $1${RESET}"
  echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
}

# ------------------------------------------------------
# � SECTION: Complete Development Environment Setup
# ------------------------------------------------------

setup_development_environment() {
  section "SYSTEM REQUIREMENTS CHECK"
  
  step "Verifying required system packages..."
  
  info "Checking for Python 3..."
  command -v python3 >/dev/null || error "Python 3 is not installed. Please install Python 3.12 or later."
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
  if [ -d "venv" ]; then
    warn "Virtual environment already exists. Removing old one..."
    rm -rf venv
  fi
  
  python3 -m venv venv
  source venv/bin/activate
  success "Virtual environment created and activated."
  
  step "Upgrading pip in virtual environment..."
  pip install --upgrade pip
  PIP_NEW_VERSION=$(pip --version | cut -d' ' -f2)
  success "pip upgraded to version $PIP_NEW_VERSION."

  section "HYBRID DEPENDENCY MANAGEMENT"
  
  info "This project uses a hybrid dependency approach:"
  info "• Production dependencies: requirements.in → requirements.txt (via pip-tools)"
  info "• Development dependencies: pyproject.toml [project.optional-dependencies.dev]"
  
  step "Installing dependency management tools..."
  pip install pip-tools build wheel
  success "pip-tools, build, and wheel installed."
  
  step "Running dependency setup script..."
  ./scripts/dependency.sh
  success "All dependencies installed successfully."
  
  step "Verifying dependency installation..."
  pip list --format=columns
  success "Dependency verification complete."

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

  step "Reloading shell configuration..."
  source "$PROFILE"
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
    source venv/bin/activate
    pre-commit install
    success "Pre-commit hooks installed."
    
    step "Updating pre-commit hook repositories..."
    pre-commit autoupdate
    success "Pre-commit hooks updated to latest versions."
    
    step "Running pre-commit on all files (initial check)..."
    pre-commit run --all-files || warn "Some pre-commit checks failed. This is normal for initial setup."
    info "Pre-commit will now run automatically on git commits."
  else
    warn ".pre-commit-config.yaml not found. Skipping hook installation."
  fi

  section "SECRET MANAGEMENT SETUP"
  
  step "Checking 1Password CLI integration..."
  if op --version &>/dev/null; then
    success "1Password CLI is installed and accessible."
    
    step "Testing 1Password connection..."
    if op account list &>/dev/null; then
      success "1Password CLI is connected to your account."
    else
      warn "1Password CLI is installed but not connected to your account."
      info "You may need to sign in: op signin"
    fi
  else
    warn "1Password CLI not found."
    info "1Password CLI must be installed on Windows with CLI integration enabled and linked to WSL."
    info "Follow the instructions here:"
    info "https://www.notion.so/techletes/Python-Basic-Template-Repository-24117d03144d809f92f9dc682d17d347"
    info "Re-run this setup script after installing 1Password CLI."
  fi

  step "Setting up secrets baseline with detect-secrets..."
  if [ -f ".secrets.baseline" ]; then
    warn "Existing .secrets.baseline found. Backing up..."
    cp .secrets.baseline .secrets.baseline.backup
  fi
  
  detect-secrets scan > .secrets.baseline
  success "Secrets baseline created in .secrets.baseline."
  
  step "Verifying secrets configuration..."
  detect-secrets audit .secrets.baseline
  success "Secrets configuration verified."

  section "DEVELOPMENT TOOLS VERIFICATION"
  
  step "Verifying installed development tools..."
  
  info "Checking Black (code formatter)..."
  black --version
  success "Black is working."
  
  info "Checking isort (import sorter)..."
  isort --version
  success "isort is working."
  
  info "Checking flake8 (linter)..."
  flake8 --version
  success "flake8 is working."
  
  info "Checking mypy (type checker)..."
  mypy --version
  success "mypy is working."
  
  info "Checking pytest (test runner)..."
  pytest --version
  success "pytest is working."

  section "PROJECT VALIDATION"
  
  step "Running final project validation..."
  
  info "Checking Python imports..."
  python -c "import utils.secrets; import utils.utils; print('✅ All project modules import successfully')"
  
  info "Running syntax check on all Python files..."
  find . -name "*.py" -not -path "./venv/*" -exec python -m py_compile {} \;
  success "All Python files have valid syntax."
  
  if [ -f "requirements.txt" ] && [ -s "requirements.txt" ]; then
    info "Verifying production dependencies..."
    pip check
    success "All dependencies are compatible."
  else
    info "No production dependencies to verify (requirements.txt is empty)."
  fi

  section "SETUP COMPLETE"
  
  echo -e "\n${GREEN}🎉 DEVELOPMENT ENVIRONMENT SETUP COMPLETE! 🎉${RESET}\n"
  
  echo -e "${BLUE}📋 What was installed:${RESET}"
  echo -e "   • Python virtual environment (venv/)"
  echo -e "   • Production dependencies (from requirements.txt)"
  echo -e "   • Development tools (from pyproject.toml)"
  echo -e "   • Pre-commit hooks for code quality"
  echo -e "   • Secret management with detect-secrets"
  echo -e "   • direnv for environment variables"
  
  echo -e "\n${BLUE}🚀 Next steps:${RESET}"
  echo -e "   1. Restart your terminal or run: source ~/.bashrc"
  echo -e "   2. Test the setup: python example/using_secrets.py"
  echo -e "   3. Start coding! The environment is ready."
  
  echo -e "\n${BLUE}💡 Useful commands:${RESET}"
  echo -e "   • Activate environment: source venv/bin/activate"
  echo -e "   • Install new production dep: Add to requirements.in, run ./scripts/dependency.sh"
  echo -e "   • Install new dev tool: Add to pyproject.toml, run pip install -e .[dev]"
  echo -e "   • Run tests: pytest"
  echo -e "   • Format code: black . && isort ."
  echo -e "   • Type check: mypy ."
  
  if ! op --version &>/dev/null || ! op account list &>/dev/null; then
    echo -e "\n${YELLOW}⚠️ 1Password CLI setup incomplete:${RESET}"
    echo -e "   Install and configure 1Password CLI to use secret management features."
  fi
  
  echo -e "\n${GREEN}Happy coding! 🐍✨${RESET}"
}

# ------------------------------------------------------
# 🏁 Main Execution
# ------------------------------------------------------

setup_development_environment