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
  # true if running inside WSL
  grep -qi "microsoft" /proc/sys/kernel/osrelease 2>/dev/null || [[ -n "${WSL_DISTRO_NAME:-}" ]]
}

has_cmd() { command -v "$1" >/dev/null 2>&1; }

setup_development_environment() {
  section "system requirements check"
  step "verifying required system packages"
  has_cmd python3 || error "Python 3 is not installed. Install Python 3.12+."
  success "Python $(python3 --version | cut -d' ' -f2) found."
  has_cmd pip || error "pip is not installed."
  success "pip $(pip --version | cut -d' ' -f2) found."
  has_cmd git || error "git is not installed."
  success "git $(git --version | cut -d' ' -f3) found."
  if has_cmd curl; then success "curl available."; else warn "curl not found. Some optional steps may be skipped."; fi

  section "virtual environment setup"
  step "creating Python virtual environment"
  if [ -d "$VENV_DIR" ]; then
    warn "virtual environment already exists"
    read -p "Enter 1 to keep, 2 to recreate [default: 2]: " VENV_CHOICE
    VENV_CHOICE=${VENV_CHOICE:-2}
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
  python -m pip install --upgrade pip
  success "pip upgraded to $(pip --version | cut -d' ' -f2)."

  section "hybrid dependency management"
  info "production deps in $PYPROJECT to $PROD_LOCK"
  info "development deps in $PYPROJECT extra [dev] to $DEV_LOCK"
  step "installing pip tools"
  pip install pip-tools build wheel
  success "pip tools installed"

  step "running dependency setup script"
  ./scripts/dependency.sh
  success "dependencies installed"

  section "system locale configuration"
  if has_cmd apt; then
    step "ensuring locales"
    sudo apt update
    sudo apt install -y locales
    sudo locale-gen en_US.UTF-8
    sudo update-locale LANG=en_US.UTF-8
    success "locales configured"
  else
    warn "apt not available. skipping locale setup"
  fi

  section "direnv setup"
  if has_cmd apt; then
    step "installing direnv"
    sudo apt install -y direnv
    success "direnv installed"
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
  else
    warn "apt not available. install direnv manually if desired"
  fi

  section "pre commit hooks setup"
  step "installing pre commit hooks"
  if [[ -f ".pre-commit-config.yaml" ]]; then
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
    if pip show "$tool" >/dev/null 2>&1; then success "$tool installed"; else warn "$tool missing"; fi
  done

  section "project validation"
  step "running final project validation"
  info "checking imports"
  python - <<'PYCODE'
import utils.secrets, utils.utils
print("✅ All project modules import successfully")
PYCODE
  info "syntax checking"
  find . -name "*.py" -not -path "./$VENV_DIR/*" -exec python -m py_compile {} \;
  success "python syntax valid"
  if [ -s "$PROD_LOCK" ]; then
    info "verifying dependency compatibility"
    pip check
    success "dependencies compatible"
  else
    info "no production dependencies to verify"
  fi

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
