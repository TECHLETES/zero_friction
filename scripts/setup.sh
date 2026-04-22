#!/usr/bin/env bash
set -euo pipefail

# configuration
export VENV_DIR="${VENV_DIR:-.venv}"
export PYPROJECT="${PYPROJECT:-pyproject.toml}"

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


check_system_requirements() {
  section "system requirements check"
  step "verifying required system packages"
  has_cmd python3 || error "Python 3 is not installed. Install Python 3.12+."
  success "Python $(python3 --version | cut -d' ' -f2) found."

  # Check for pip and install if missing
  if has_cmd pip; then
    success "pip $(pip --version | cut -d' ' -f2) found."
  else
    warn "pip not found."
    install_package "python3-pip"
  fi

  has_cmd git || error "git is not installed."
  success "git $(git --version | cut -d' ' -f3) found."

  step "verifying uv package manager"
  if has_cmd uv; then
    success "uv $(uv --version) found."
  else
    warn "uv not found. installing..."
    if has_cmd curl; then
      curl -LsSf https://astral.sh/uv/install.sh | sh
      # Add uv to PATH for current session
      export PATH="$HOME/.local/bin:$PATH"
      success "uv installed successfully. Added to PATH."
    else
      error "curl is required to install uv. Please install curl or uv manually."
    fi
  fi

  if has_cmd direnv; then
    success "direnv found."
  else
    warn "direnv not found."
    install_package "direnv"
  fi

  if has_cmd curl; then success "curl available."; else warn "curl not found. Some optional steps may be skipped."; fi

  section "docker setup"
  step "checking for Docker and Docker Compose"
  if has_cmd apt-get; then
    if ! command -v docker &> /dev/null; then
      step "Docker not found. Installing Docker..."

      # Remove old versions
      sudo apt-get remove -y docker docker-engine docker.io containerd runc || true

      # Update packages
      sudo apt-get update -y
      sudo apt-get install -y ca-certificates curl gnupg lsb-release

      # Add Docker’s official GPG key
      sudo mkdir -p /etc/apt/keyrings
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

      # Set up the Docker repository
      echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
        https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

      # Install Docker
      sudo apt-get update -y
      sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

      # Enable & start Docker
      sudo systemctl enable docker
      sudo systemctl start docker

      success "Docker installed successfully."
    else
      success "Docker is already installed."
    fi

    # Check & install Docker Compose (v2 CLI plugin)
    if ! docker compose version &> /dev/null; then
      step "Docker Compose plugin not found. Installing..."
      sudo apt-get install -y docker-compose-plugin
      success "Docker Compose installed successfully."
    else
      success "Docker Compose is already installed."
    fi

    # Verification
    step "verifying installation"
    docker --version
    docker compose version

    success "Docker and Docker Compose are ready to use!"
  else
    warn "Docker installation only supported on Debian/Ubuntu systems with apt-get."
  fi
}

setup_dependencies() {
  section "dependency management with uv"
  info "managing dependencies from $PYPROJECT"
  step "locking dependencies with uv"
  uv lock
  success "uv.lock created"

  step "syncing dependencies with uv"
  uv sync
  success "dependencies installed from uv.lock"
}

configure_locale() {
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
}

setup_direnv() {
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
}

setup_pre_commit() {
  section "pre commit hooks setup"
  step "installing pre commit hooks"
  if [[ -f ".pre-commit-config.yaml" ]]; then
    $VENV_DIR/bin/pre-commit install
    success "pre commit hooks installed"
    step "updating pre commit repos"

    $VENV_DIR/bin/pre-commit autoupdate
    success "pre commit hooks updated"
    step "running pre commit on all files"
    $VENV_DIR/bin/pre-commit run --all-files || warn "some pre commit checks failed"
  else
    warn ".pre-commit-config.yaml not found. skipping"
  fi
}

setup_secrets() {
  section "secret management setup"

  step "initializing secrets baseline"
  if [ -f ".secret.baseline" ]; then
    warn "existing .secret.baseline found. backing up"
    cp .secret.baseline .secret.baseline.bak
  fi
  $VENV_DIR/bin/detect-secrets scan > .secret.baseline
  success "secrets baseline created"
  $VENV_DIR/bin/detect-secrets audit .secret.baseline || warn "manual review of baseline recommended"
  success "secrets configuration verified"
}

validate_project() {
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
}

print_completion() {
  section "setup complete"
  echo -e "\n${GREEN}🎉 development environment setup complete${RESET}\n"
  echo -e "${BLUE}installed:${RESET}"
  echo "  • $VENV_DIR/"
  echo "  • uv.lock (all dependencies locked and synced)"
  echo "  • pre commit hooks"
  echo "  • secret baseline (.secret.baseline)"
  echo "  • direnv"
  echo -e "\n${BLUE}next steps:${RESET}"
  echo "  1. restart terminal or run: source ~/.bashrc"
  echo "  2. test with: python example/using_secrets.py"
  echo "  3. start coding"
  echo -e "\n${BLUE}common commands:${RESET}"
  echo "  • uv sync          - sync dependencies from uv.lock"
  echo "  • uv lock          - update locks (patch + minor updates)"
  echo "  • uv lock --upgrade - update locks (with major versions)"
  echo "  • uv run pytest    - run pytest without activating venv"
}

setup_development_environment() {
  check_system_requirements
  setup_dependencies
  configure_locale
  setup_direnv
  setup_pre_commit
  setup_secrets
  validate_project
  print_completion
}

setup_development_environment
