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

get_latest_version() {
    local package=$1
    
    # Fetch latest version from PyPI API
    local json_response=$(curl -s "https://pypi.org/pypi/${package}/json" 2>/dev/null)
    
    if [ -z "$json_response" ]; then
        return 1
    fi
    
    # Extract version from JSON (basic extraction, no jq dependency)
    local version=$(echo "$json_response" | grep -oP '"version":\s*"\K[^"]+' | head -1)
    
    if [ -n "$version" ]; then
        echo "$version"
        return 0
    fi
    return 1
}

parse_pyproject() {
    # Extract full package specifications from dependencies sections only
    # Matches entries like: "package", "package>=1.0", "package>=1.0,<2.0", etc.
    # Only in 'dependencies' and 'dev' sections, skipping classifiers
    awk '
    /^\[project\]$/ {in_deps=1; next}
    /^\[project.optional-dependencies/ {in_deps=2; next}
    /^\[/ && !/^\[project/ {in_deps=0; next}
    (in_deps==1 || in_deps==2) && /^\s*"[a-zA-Z0-9_\-\.@]+/ && !/^dependencies|^dev/ {
        # Skip lines that contain these patterns (from classifiers and config)
        if ($0 !~ /::/) {
            match($0, /"([^"]+)"/, arr)
            if (arr[1]) print arr[1]
        }
    }
    ' "$PYPROJECT"
}

check_and_update_deps() {
    local auto_update=$1
    local force_yes=$2
    
    step "Checking for package updates..."
    
    if [ ! -f "$PYPROJECT" ]; then
        error "pyproject.toml not found!"
    fi
    
    # Parse current packages
    local packages=$(parse_pyproject)
    local pkg_count=$(echo "$packages" | wc -l)
    info "Found $pkg_count pinned packages"
    echo
    
    # Check for updates - use temp files instead of associative array for compatibility
    local updates_file=$(mktemp)
    trap "rm -f $updates_file" RETURN
    
    while read -r package_spec; do
        # Extract package name (everything before version operators)
        local package_name=$(echo "$package_spec" | sed 's/[><=~!@].*//')
        
        printf "Checking $package_name (current: $package_spec)... "
        
        local latest_version
        latest_version=$(get_latest_version "$package_name" 2>/dev/null) || latest_version=""
        
        if [ -n "$latest_version" ]; then
            printf "→ $latest_version (UPDATE AVAILABLE)\n"
            # Store: original_spec|package_name|new_version
            echo "$package_spec|$package_name|$latest_version" >> "$updates_file"
        else
            printf "✓ up to date\n"
        fi
    done <<< "$packages"
    
    echo
    local update_count=0
    if [ -f "$updates_file" ] && [ -s "$updates_file" ]; then
        update_count=$(wc -l < "$updates_file")
    fi
    info "Updates available: $update_count"
    
    if [ "$update_count" -eq 0 ]; then
        success "All packages are up to date!"
        return 0
    fi
    
    # Show updates available
    info "Updates found:"
    while IFS='|' read -r orig_spec pkg_name new_version; do
        info "  $pkg_name → $new_version"
    done < "$updates_file"
    echo
    
    if [ "$auto_update" = false ]; then
        info "To apply updates, run: ./scripts/dependency.sh --update"
        return 0
    fi
    
    # Ask user if they want to update (unless --yes flag is used)
    if [ "$force_yes" = false ]; then
        read -p "Do you want to update pyproject.toml with these versions? (y/N): " -r response
        response=${response,,}  # Convert to lowercase
        if [[ ! "$response" =~ ^(y|yes)$ ]]; then
            info "Update cancelled."
            return 0
        fi
    else
        info "Auto-updating due to --yes flag..."
    fi
    
    # Update pyproject.toml
    local updated_content
    updated_content=$(cat "$PYPROJECT")
    
    while IFS='|' read -r orig_spec pkg_name new_version; do
        # Escape special regex characters in the original spec
        local escaped_spec=$(echo "$orig_spec" | sed 's/[[\.*^$/]/\\&/g')
        # Replace the old spec with package name pinned to new version (==)
        updated_content=$(echo "$updated_content" | sed "s/\"${escaped_spec}\"/\"${pkg_name}==${new_version}\"/g")
    done < "$updates_file"
    
    echo "$updated_content" > "$PYPROJECT"
    success "Updated $update_count packages in pyproject.toml"
    
    # Run uv lock to update the lock file
    step "Updating uv.lock..."
    uv lock
    success "Lock file updated"
    
    echo
    info "Done! You may want to run 'uv sync' to install the updated packages."
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
