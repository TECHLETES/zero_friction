#!/usr/bin/env bash
set -euo pipefail

# -----------------------------------------------------------------------------
# Configuration
# -----------------------------------------------------------------------------
# Use environment variables if they exist, otherwise set sensible defaults.
export VENV_DIR="${VENV_DIR:-.venv}"
export PYPROJECT="${PYPROJECT:-pyproject.toml}"
export PROD_LOCK="${PROD_LOCK:-requirements.txt}"
export DEV_LOCK="${DEV_LOCK:-requirements-dev.txt}"

# -----------------------------------------------------------------------------
# Script Info
# -----------------------------------------------------------------------------
# Hybrid dependency management script:
# Compiles lockfiles first, then installs, to ensure a robust workflow.
#
# Usage:
#   ./scripts/dependency.sh          # Compile and install both prod & dev
#   ./scripts/dependency.sh --prod   # Compile and install only prod
#   ./scripts/dependency.sh --dev    # Compile and install only dev

# -----------------------------------------------------------------------------
# UI Functions
# -----------------------------------------------------------------------------
# Colors
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
RESET='\033[0m'

# Helper functions for printing formatted output
info()    { echo -e "${BLUE}ℹ️ $1${RESET}"; }
step()    { echo -e "\n${YELLOW}$1${RESET}"; }
success() { echo -e "${GREEN}✅ $1${RESET}"; }
error()   { echo -e "${RED}❌ $1${RESET}"; exit 1; }

# -----------------------------------------------------------------------------
# Argument Parsing
# -----------------------------------------------------------------------------
INSTALL_PROD=false
INSTALL_DEV=false

# Default to both if no arguments are provided
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
        error "Unknown option: $arg. Usage: $0 [--prod] [--dev]"
        ;;
    esac
  done
fi

# -----------------------------------------------------------------------------
# Environment Setup
# -----------------------------------------------------------------------------
step "Activating virtualenv at '${VENV_DIR}'..."
if [ -f "${VENV_DIR}/bin/activate" ]; then
    # shellcheck disable=SC1090
    source "${VENV_DIR}/bin/activate"
    success "Virtual environment activated."
else
    error "Virtualenv not found at '${VENV_DIR}'. Please create venv first."
fi

step "Ensuring pip-tools is installed..."
if ! pip show pip-tools &>/dev/null; then
    info "Installing pip-tools..."
    pip install pip-tools
    success "pip-tools installed."
else
    success "pip-tools is already installed."
fi

# =============================================================================
# MAJOR CHANGE: The script is now split into a COMPILE phase and an INSTALL phase.
# =============================================================================

# -----------------------------------------------------------------------------
# PHASE 1: COMPILE ALL REQUIRED LOCKFILES
# -----------------------------------------------------------------------------
# This block runs first to ensure our lockfiles are valid before we try to
# install from them. This prevents errors if a file was manually edited.

step "PHASE 1: Compiling lockfiles from '${PYPROJECT}'..."

if [ "$INSTALL_PROD" = true ]; then
  info "Compiling production lockfile: '${PROD_LOCK}'"
  pip-compile "${PYPROJECT}" \
      --output-file="${PROD_LOCK}" \
      --strip-extras
fi

if [ "$INSTALL_DEV" = true ]; then
  info "Compiling development lockfile: '${DEV_LOCK}'"
  pip-compile "${PYPROJECT}" \
      --extra=dev \
      --output-file="${DEV_LOCK}" \
      --strip-extras
fi

success "All required lockfiles compiled."

# -----------------------------------------------------------------------------
# PHASE 2: INSTALL DEPENDENCIES FROM THE (NOW VERIFIED) LOCKFILES
# -----------------------------------------------------------------------------
# Now that we know the lockfiles are correct, we can safely install from them.

step "PHASE 2: Installing dependencies..."

if [ "$INSTALL_PROD" = true ]; then
  info "Installing production dependencies from '${PROD_LOCK}'..."
  pip install -r "${PROD_LOCK}"
fi

if [ "$INSTALL_DEV" = true ]; then
  info "Installing development dependencies from '${DEV_LOCK}'..."
  # The dev requirements should include the prod ones, but `pip install` handles duplicates gracefully.
  pip install -r "${DEV_LOCK}"
fi

success "All required dependencies installed."

# -----------------------------------------------------------------------------
# Final Verification
# -----------------------------------------------------------------------------
step "Verifying environment consistency..."
pip check
success "Environment check passed."

# --- Final Summary ---
echo
success "Dependency setup complete!"
[ "$INSTALL_PROD" = true ] && echo "  • Production dependencies updated from '${PROD_LOCK}'"
[ "$INSTALL_DEV" = true ] && echo "  • Development dependencies updated from '${DEV_LOCK}'"
