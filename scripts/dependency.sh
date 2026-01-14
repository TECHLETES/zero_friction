#!/usr/bin/env bash
set -euo pipefail

# =============================================================================
# uv Dependency Management Script
# =============================================================================
# A modern dependency management helper using uv for fast, reliable builds
#
# Usage:
#   ./scripts/dependency.sh              # Setup dev environment (default)
#   ./scripts/dependency.sh --prod       # Production environment
#   ./scripts/dependency.sh --no-sync    # Compile only, skip sync
#   ./scripts/dependency.sh --check      # Check for package updates
#   ./scripts/dependency.sh --update     # Check and auto-update packages
#   ./scripts/dependency.sh --update -y  # Update without prompting
#
# This script replaces the previous pip-tools workflow with uv, which provides:
# - Faster dependency resolution
# - Simpler, more transparent lock files
# - Better compatibility with modern Python packaging
#
# =============================================================================

# Configuration
export VENV_DIR="${VENV_DIR:-.venv}"
export PYPROJECT="${PYPROJECT:-pyproject.toml}"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Colors for output
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
RESET='\033[0m'

# Helper functions
info()    { echo -e "${BLUE}ℹ️ $1${RESET}"; }
step()    { echo -e "\n${YELLOW}$1${RESET}"; }
success() { echo -e "${GREEN}✅ $1${RESET}"; }
error()   { echo -e "${RED}❌ $1${RESET}"; exit 1; }

# Argument Parsing
PROD_MODE=false
SKIP_SYNC=false
CHECK_UPDATES=false
AUTO_UPDATE=false
UPDATE_YES=false

while [ $# -gt 0 ]; do
  case "$1" in
    --prod)
      PROD_MODE=true
      shift
      ;;
    --no-sync)
      SKIP_SYNC=true
      shift
      ;;
    --check)
      CHECK_UPDATES=true
      shift
      ;;
    --update)
      AUTO_UPDATE=true
      CHECK_UPDATES=true
      shift
      # Check for -y flag
      if [ $# -gt 0 ] && [ "$1" = "-y" ]; then
        UPDATE_YES=true
        shift
      fi
      ;;
    -h|--help)
      echo "Usage: $0 [OPTIONS]"
      echo ""
      echo "Options:"
      echo "  --prod              Production environment (no dev tools)"
      echo "  --no-sync           Lock only, skip sync"
      echo "  --check             Check for package updates"
      echo "  --update            Check and update packages (interactive)"
      echo "  --update -y         Update packages without prompting"
      echo "  -h, --help          Show this help message"
      exit 0
      ;;
    *)
      error "Unknown option: $1. Use --help for usage information."
      ;;
  esac
done

# Check if uv is installed
step "Checking for uv installation..."
if ! command -v uv &> /dev/null; then
    error "uv is not installed. Please install it with: https://docs.astral.sh/uv/getting-started/installation/"
fi
success "uv is installed ($(uv --version))"

# =============================================================================
# HELPER FUNCTIONS FOR UPDATES
# =============================================================================

check_and_update_deps() {
    local auto_update=$1
    local force_yes=$2
    
    step "Checking for package updates using Python script..."
    
    if [ ! -f "$SCRIPTS_DIR/update_deps.py" ]; then
        error "update_deps.py not found at $SCRIPTS_DIR/update_deps.py"
    fi
    
    # Run the update script with appropriate flags
    local python_cmd="python $SCRIPTS_DIR/update_deps.py"
    
    if [ "$auto_update" = true ]; then
        if [ "$force_yes" = true ]; then
            $python_cmd --yes
        else
            $python_cmd
        fi
    else
        # Just check, don't update
        info "Checking for available updates..."
        $python_cmd
        info "To apply updates, run: ./scripts/dependency.sh --update"
    fi
}

# =============================================================================
# EARLY EXIT FOR UPDATE OPERATIONS
# =============================================================================

if [ "$CHECK_UPDATES" = true ]; then
    check_and_update_deps "$AUTO_UPDATE" "$UPDATE_YES"
    exit 0
fi

# Create or activate virtual environment
step "Setting up virtual environment at '${VENV_DIR}'..."
if [ ! -d "${VENV_DIR}" ]; then
    info "Creating new virtual environment..."
    uv venv "${VENV_DIR}"
    success "Virtual environment created."
else
    success "Virtual environment exists."
fi

# Ensure the venv is valid
if [ ! -f "${VENV_DIR}/bin/activate" ] && [ ! -f "${VENV_DIR}/Scripts/activate" ]; then
    error "Virtual environment is broken. Remove ${VENV_DIR} and rerun this script."
fi

# =============================================================================
# PHASE 1: LOCK DEPENDENCIES
# =============================================================================
step "PHASE 1: Locking dependencies using uv..."

if [ "$PROD_MODE" = true ]; then
  info "Production mode: Locking production dependencies only (no dev tools)"
  uv lock --no-dev
  success "Production dependencies locked to uv.lock"
else
  info "Development mode: Locking all dependencies (including dev tools)"
  uv lock
  success "All dependencies locked to uv.lock"
fi

# =============================================================================
# PHASE 2: SYNC ENVIRONMENT
# =============================================================================
if [ "$SKIP_SYNC" = false ]; then
  step "PHASE 2: Syncing environment with uv..."
  
  if [ "$PROD_MODE" = true ]; then
    info "Installing production dependencies only (no dev packages)..."
    uv sync --no-dev
    success "Production environment synced."
  else
    info "Installing all dependencies (core + dev)..."
    uv sync
    success "Development environment synced."
  fi
else
  step "PHASE 2: Skipped (--no-sync flag provided)"
  info "Run 'uv sync' manually when ready to install dependencies."
fi

# Final Summary
echo
success "Dependency setup complete!"
if [ "$PROD_MODE" = true ]; then
  echo "  • Production dependencies locked and synced"
else
  echo "  • All dependencies locked and synced"
  echo "  • Development tools installed"
fi
echo "  • Lock file: uv.lock"
echo
info "Next steps:"
if [ "$SKIP_SYNC" = false ]; then
  echo "  • Run code: uv run python script.py"
  echo "  • Run tests: uv run pytest"
  echo "  • Type check: uv run mypy ."
  echo "  • Check for updates: ./scripts/dependency.sh --check"
  echo "  • Update packages: ./scripts/dependency.sh --update"
else
  echo "  • Sync environment: uv sync"
  echo "  • Then use: uv run python script.py"
fi
