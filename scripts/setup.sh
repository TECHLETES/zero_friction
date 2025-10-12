#!/usr/bin/env bash
set -euo pipefail

# configuration
export VENV_DIR="${VENV_DIR:-venv}"
export PYPROJECT="${PYPROJECT:-pyproject.toml}"
export PROD_LOCK="${PROD_LOCK:-requirements.txt}"
export DEV_LOCK="${DEV_LOCK:-requirements-dev.txt}"

# ui helpers
GREEN='\033[0;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
RESET='\033[0m'
step()   { echo -e "${CYAN}👉 $1${RESET}"; }
success(){ echo -e "${GREEN}✅ $1${RESET}"; }
warn()   { echo -e "${YELLOW}⚠ $1${RESET}"; }
error()  { echo -e "${RED}❌ $1${RESET}"; exit 1; }
info()   { echo -e "${BLUE}ℹ $1${RESET}"; }
section(){
  echo -e "\n${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  echo -e "${BLUE}🔧 $1${RESET}"
  echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
}

is_wsl() {
  grep -qi "microsoft" /proc/sys/kernel/osrelease 2>/dev/null || [[ -n "${WSL_DISTRO_NAME:-}" ]]
}

has_cmd() { command -v "$1" >/dev/null 2>&1; }

# Universal package installation function
APT_UPDATED=""
install_package() {
  local package_name=$1
  step "Attempting to install $package_name..."
  if has_cmd apt-get; then
    if [[ -z "${APT_UPDATED}" ]]; then
      sudo apt-get update
      APT_UPDATED="1"
    fi
    sudo apt-get install -y "$package_name"
  elif has_cmd dnf; then
    sudo dnf install -y "$package_name"
  elif has_cmd yum; then
    sudo yum install -y "$package_name"
  else
    error "Could not find apt-get, dnf, or yum. Please install '$package_name' manually."
    return 1
  fi
  success "$package_name installed successfully."
}


setup_development_environment() {
  section "system requirements check"
  step "verifying required system packages"
  has_cmd python3 || error "Python 3 is not installed. Install Python 3.12+."
  success "Python $(python3 --version | cut -d' ' -f2) found."

  # Ensure the venv module exists for the active python3
  PY_MINOR="$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")"
  if python3 -c "import venv" &>/dev/null; then
    success "python${PY_MINOR} venv module is available."
  else
    warn "venv module missing for python${PY_MINOR}."
    # Best effort install per distro
    if has_cmd apt-get; then
      install_package "python${PY_MINOR}-venv" || warn "could not install python${PY_MINOR}-venv automatically"
    elif has_cmd dnf; then
      # On Fedora venv is in the python base package
      install_package "python${PY_MINOR}" || true
    elif has_cmd yum; then
      install_package "python${PY_MINOR}" || true
    else
      warn "install the appropriate python venv package manually"
    fi
  fi


  # Check for pip and install if missing
  if has_cmd pip; then
    success "pip $(pip --version | cut -d' ' -f2) found."
  else
    warn "pip not found."
    install_package "python3-pip"
  fi

  has_cmd git || error "git is not installed."
  success "git $(git --version | cut -d' ' -f3) found."

  if has_cmd direnv; then
    success "direnv found."
  else
    warn "direnv not found."
    install_package "direnv"
  fi
  
  if has_cmd curl; then success "curl available."; else warn "curl not found. Some optional steps may be skipped."; fi


  section "virtual environment setup"
  step "creating Python virtual environment"
  if [ -d "$VENV_DIR" ]; then
    warn "virtual environment already exists"
    if [[ -n "${VENV_CHOICE:-}" ]]; then
      info "VENV_CHOICE preset to ${VENV_CHOICE}"
    elif [[ "${CI:-}" == "true" || "${NONINTERACTIVE:-}" == "1" ]]; then
      VENV_CHOICE=2
      info "non interactive mode active. defaulting to recreate"
    else
      read -p "Enter 1 to keep, 2 to recreate [default: 2]: " VENV_CHOICE
      VENV_CHOICE=${VENV_CHOICE:-2}
    fi
    if [ "$VENV_CHOICE" = "1" ]; then
      success "keeping existing virtual environment"
      # shellcheck disable=SC1090
      source "$VENV_DIR/bin/activate"
    elif [ "$VENV_CHOICE" = "2" ]; then
      warn "removing old virtual environment"
      rm -rf "$VENV_DIR"
      python3 -m venv "$VENV_DIR"
      # shellcheck disable=SC1090
      source "$VENV_DIR/bin/activate"
      success "virtual environment created and activated"
    else
      error "invalid choice"
    fi
  else
    python3 -m venv "$VENV_DIR"
    # shellcheck disable=SC1090
    source "$VENV_DIR/bin/activate"
    success "virtual environment created and activated"
  fi


  step "upgrading pip in virtual environment"
  python -m ensurepip --upgrade >/dev/null 2>&1 || true
  python -m pip install --upgrade pip
  success "pip upgraded to $("$VENV_DIR/bin/python" -m pip --version | awk '{print $2}')."

  section "hybrid dependency management"
  info "production deps in $PYPROJECT to $PROD_LOCK"
  info "development deps in $PYPROJECT extra [dev] to $DEV_LOCK"
  step "installing pip tools"
  python -m pip install pip-tools build wheel
  success "pip tools installed"

  step "running dependency setup script"
  ./scripts/dependency.sh
  success "dependencies installed"

  section "system locale configuration"
  step "ensuring locales"
  if has_cmd apt-get; then
    sudo apt-get install -y locales
    sudo locale-gen en_US.UTF-8
    sudo update-locale LANG=en_US.UTF-8
    success "locales configured for Debian family"
  elif has_cmd dnf || has_cmd yum; then
    # On Fedora and RHEL locales are typically available. Configure via localectl.
    if has_cmd localectl; then
      sudo localectl set-locale LANG=en_US.UTF-8
      success "locales configured via localectl"
    else
      warn "localectl not found. verify locale manually"
    fi
  else
    warn "no known package manager detected for locale configuration"
  fi


  section "direnv setup"
  step "configuring direnv shell integration"
  PROFILE="${HOME}/.bashrc"
  if ! grep -q 'direnv hook bash' "$PROFILE"; then
    echo 'eval "$(direnv hook bash)"' >> "$PROFILE"
    success "added direnv hook to $PROFILE"
  else
    warn "direnv hook already present in $PROFILE"
  fi
  step "enabling direnv for this project"
  if [ -f ".envrc" ]; then
    direnv allow || true
    success "direnv enabled for this project"
  else
    warn ".envrc not found. skipping allow"
  fi

  section "pre commit hooks setup"
  step "installing pre commit hooks"
  if [[ -f ".pre-commit-config.yaml" ]]; then
    python -m pip install pre-commit detect-secrets || true
    pre-commit install
    success "pre commit hooks installed"
    step "updating pre commit repos"
    pre-commit autoupdate
    success "pre commit hooks updated"
    step "running pre commit on all files"
    pre-commit run --all-files || warn "some pre commit checks failed"
  else
    warn ".pre-commit-config.yaml not found. skipping"
  fi

  section "secret management setup"
  step "checking 1password cli"
  if has_cmd op; then
    success "1password cli is installed"
    if op account list >/dev/null 2>&1; then
      success "1password cli is connected"
    else
      warn "1password cli not signed in"
    fi
  else
    # In WSL users sometimes rely on Windows 1Password
    if is_wsl; then
      warn "op not found in WSL. if you use Windows 1Password, install op in WSL or skip this"
    else
      error "1Password CLI not found. install and configure before secrets workflow"
    fi
  fi

   # Ensure detect-secrets is available before using it
  if ! command -v detect-secrets >/dev/null 2>&1; then
    python -m pip install detect-secrets
  fi
  
  step "initializing secrets baseline"
  if [ -f ".secrets.baseline" ]; then
    warn "existing .secrets.baseline found. backing up"
    cp .secrets.baseline .secrets.baseline.bak
  fi
  detect-secrets scan > .secrets.baseline
  success "secrets baseline created"
  detect-secrets audit .secrets.baseline || warn "manual review of baseline recommended"
  success "secrets configuration verified"

  section "development tools verification"
  step "verifying development tools"
  for tool in black ruff mypy pytest beartype; do
    if python -m pip show "$tool" >/dev/null 2>&1; then success "$tool installed"; else warn "$tool missing"; fi
  done

  section "project validation"
  step "running final project validation"
  info "checking imports"

  section "project validation"
  step "running final project validation"
  info "checking imports"

  "$VENV_DIR/bin/python" - <<'PYCODE'
import importlib
mods = ["utils.secrets"]
for m in mods:
    importlib.import_module(m)
print("✅ All project modules import successfully")
PYCODE

  section "setup complete"
  echo -e "\n${GREEN}🎉 development environment setup complete${RESET}\n"
  echo -e "${BLUE}installed:${RESET}"
  echo "  • $VENV_DIR/"
  echo "  • production deps ($PROD_LOCK)"
  echo "  • dev tools ($DEV_LOCK)"
  echo "  • pre commit hooks"
  echo "  • secret baseline (.secrets.baseline)"
  echo "  • direnv"
  echo -e "\n${BLUE}next steps:${RESET}"
  echo "  1. restart terminal or run: source ~/.bashrc"
  echo "  2. test with: python example/using_secrets.py"
  echo "  3. start coding"
}

setup_development_environment
