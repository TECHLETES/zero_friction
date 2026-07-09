#!/usr/bin/env bash
set -euo pipefail

MARKETPLACE_REF="${MARKETPLACE_REF:-main}"
MARKETPLACE_SPARSE_PATH="${MARKETPLACE_SPARSE_PATH:-.agents/plugins}"
PLUGIN_NAME="${PLUGIN_NAME:-techletes-superpowers}"
NODE_VERSION="${NODE_VERSION:-lts/*}"
NVM_VERSION="${NVM_VERSION:-v0.40.5}"

# Colors
if [ -t 1 ]; then
  BOLD="\033[1m"
  DIM="\033[2m"
  BLUE="\033[1;34m"
  GREEN="\033[1;32m"
  YELLOW="\033[1;33m"
  RED="\033[1;31m"
  RESET="\033[0m"
else
  BOLD=""
  DIM=""
  BLUE=""
  GREEN=""
  YELLOW=""
  RED=""
  RESET=""
fi

log() {
  printf "%b\n" "${BLUE}==>${RESET} $1"
}

success() {
  printf "%b\n" "${GREEN}✓${RESET} $1"
}

warn() {
  printf "%b\n" "${YELLOW}⚠${RESET} $1"
}

fail() {
  printf "%b\n" "${RED}✗${RESET} $1" >&2
  exit 1
}

section() {
  printf "\n%b\n" "${BOLD}$1${RESET}"
  printf "%b\n" "${DIM}$(printf '%*s' "${#1}" '' | tr ' ' '-')${RESET}"
}

info_kv() {
  printf "  %b%-18s%b %s\n" "${DIM}" "$1:" "${RESET}" "$2"
}

has_command() {
  command -v "$1" >/dev/null 2>&1
}

load_nvm() {
  export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"

  if [ -s "$NVM_DIR/nvm.sh" ]; then
    # shellcheck disable=SC1091
    . "$NVM_DIR/nvm.sh"
  fi
}

install_node() {
  section "Install Node.js"

  log "Node.js/npm not found. Installing Node.js via nvm..."

  if ! has_command curl; then
    fail "curl is required to install nvm. Install curl first, then rerun this script."
  fi

  export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"

  if [ ! -s "$NVM_DIR/nvm.sh" ]; then
    log "Installing nvm ${NVM_VERSION}..."
    curl -fsSL "https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh" | bash
  else
    success "nvm already installed."
  fi

  load_nvm

  if ! has_command nvm; then
    fail "nvm install completed, but nvm is not available. Restart your shell or check ~/.nvm."
  fi

  log "Installing Node.js ${NODE_VERSION}..."
  nvm install "$NODE_VERSION"
  nvm use "$NODE_VERSION"
  nvm alias default "$NODE_VERSION" >/dev/null

  if ! has_command node || ! has_command npm; then
    fail "Node.js/npm install completed, but node or npm is still not available on PATH."
  fi

  success "Node.js installed."
  info_kv "node" "$(node --version)"
  info_kv "npm" "$(npm --version)"
}

install_codex() {
  section "Install Codex CLI"

  log "Codex CLI not found. Installing @openai/codex..."

  if ! has_command node || ! has_command npm; then
    install_node
  fi

  npm install -g @openai/codex

  if ! has_command codex; then
    warn "Codex installed, but 'codex' is not yet available on PATH. Reloading nvm..."
    load_nvm
  fi

  if ! has_command codex; then
    fail "Codex CLI install completed, but 'codex' is still not available on PATH. Restart your shell or check your npm global bin path."
  fi

  success "Codex CLI installed."
}

write_techletes_codex_config_block() {
  cat <<'EOF'
# BEGIN TECHLETES CODEX CONFIG
model = "gpt-5.4-mini"
model_reasoning_effort = "medium"
personality = "pragmatic"
approvals_reviewer = "guardian_subagent"

sandbox_mode = "danger-full-access"
approval_policy = "on-request"
service_tier = "default"

[features]
memories = true
multi_agent = true

[tools]
web_search = true

[history]
persistence = "save-all"

[tui]
status_line = ["model-with-reasoning", "context-remaining", "approval-mode", "five-hour-limit", "weekly-limit", "used-tokens"]
status_line_use_colors = true

[tui.model_availability_nux]
"gpt-5.5" = 4

[tui.keymap.composer]
submit = "enter"

[memories]
use_memories = true
generate_memories = true
# END TECHLETES CODEX CONFIG
EOF
}

configure_codex() {
  section "Configure Codex"

  local codex_dir="${CODEX_HOME:-$HOME/.codex}"
  local config_file="$codex_dir/config.toml"
  local backup_file="$config_file.backup.$(date +%Y%m%d%H%M%S)"
  local tmp_file

  mkdir -p "$codex_dir"
  tmp_file="$(mktemp)"

  if [ -f "$config_file" ]; then
    cp "$config_file" "$backup_file"
    warn "Existing config backed up."
    info_kv "backup" "$backup_file"
  else
    touch "$config_file"
  fi

  awk '
    BEGIN {
      managed_sections["features"] = 1
      managed_sections["tools"] = 1
      managed_sections["history"] = 1
      managed_sections["tui"] = 1
      managed_sections["tui.model_availability_nux"] = 1
      managed_sections["tui.keymap.composer"] = 1
      managed_sections["memories"] = 1

      top_level_key_regex = "^[[:space:]]*(model|model_reasoning_effort|personality|approvals_reviewer|sandbox_mode|approval_policy|service_tier)[[:space:]]*="
      in_techletes_block = 0
      in_managed_section = 0
    }

    /^[[:space:]]*# BEGIN TECHLETES CODEX CONFIG[[:space:]]*$/ {
      in_techletes_block = 1
      next
    }

    /^[[:space:]]*# END TECHLETES CODEX CONFIG[[:space:]]*$/ {
      in_techletes_block = 0
      next
    }

    in_techletes_block {
      next
    }

    /^[[:space:]]*\[[^]]+\][[:space:]]*$/ {
      section = $0
      sub(/^[[:space:]]*\[/, "", section)
      sub(/\][[:space:]]*$/, "", section)

      if (section in managed_sections) {
        in_managed_section = 1
        next
      }

      in_managed_section = 0
      print
      next
    }

    in_managed_section {
      next
    }

    $0 ~ top_level_key_regex {
      next
    }

    {
      print
    }
  ' "$config_file" > "$tmp_file"

  {
    write_techletes_codex_config_block
    printf "\n"
    cat "$tmp_file"
  } > "$config_file"

  rm -f "$tmp_file"

  success "Codex config updated."
  info_kv "config" "$config_file"
}

configure_agents_md() {
  section "Configure AGENTS.md"

  local codex_dir="${CODEX_HOME:-$HOME/.codex}"
  local agents_file="$codex_dir/AGENTS.md"
  local backup_file="$agents_file.backup.$(date +%Y%m%d%H%M%S)"

  local script_dir
  local repo_root
  local source_agents_file

  script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
  repo_root="$(cd "$script_dir/.." && pwd)"
  source_agents_file="$repo_root/plugins/techletes-superpowers/AGENTS.md"

  if [ ! -f "$source_agents_file" ]; then
    fail "Source AGENTS.md not found: $source_agents_file"
  fi

  mkdir -p "$codex_dir"

  if [ -f "$agents_file" ]; then
    cp "$agents_file" "$backup_file"
    warn "Existing global AGENTS.md backed up."
    info_kv "backup" "$backup_file"
  fi

  cp "$source_agents_file" "$agents_file"

  success "Global Codex AGENTS.md copied from plugin."
  info_kv "source" "$source_agents_file"
  info_kv "target" "$agents_file"
}

setup_marketplace() {
  section "Configure Plugin Marketplace"

  log "Checking access to marketplace repo..."
  info_kv "repo" "$1"
  info_kv "ref" "$MARKETPLACE_REF"
  info_kv "sparse path" "$MARKETPLACE_SPARSE_PATH"

  if ! git ls-remote "$1" >/dev/null 2>&1; then
    fail "Cannot access $1. Check GitHub access and SSH/HTTPS credentials."
  fi

  success "Marketplace repo is accessible."

  log "Adding Techletes Codex plugin marketplace..."

  if codex plugin marketplace add "$1" --ref "$MARKETPLACE_REF" --sparse "$MARKETPLACE_SPARSE_PATH"; then
    success "Marketplace added."
  else
    warn "Failed to add marketplace."
  fi
}

install_codex_plugin() {
  section "Install Techletes Codex Plugins"

  log "Installing Techletes plugins from marketplace..."

  if codex plugin add $1; then
    success "Plugin $1 installed."
  else
    warn "Plugin $1 may already be installed. Continuing."
  fi
}

main() {
  printf "\n%b\n" "${BOLD}Techletes Codex Setup${RESET}"
  printf "%b\n\n" "${DIM}Installs Codex CLI, writes Techletes defaults, and adds the Techletes plugin marketplace.${RESET}"

  section "Prerequisites"

  if has_command git; then
    success "git found."
    info_kv "git" "$(git --version)"
  else
    fail "git is not installed or not available on PATH."
  fi

  if ! has_command node || ! has_command npm; then
    install_node
  else
    success "Node.js found."
    info_kv "node" "$(node --version)"
    info_kv "npm" "$(npm --version)"
  fi

  if ! has_command codex; then
    install_codex
  else
    success "Codex CLI found."
  fi

  configure_codex
  configure_agents_md

  setup_marketplace "git@github.com:TECHLETES/python_template.git"
  install_codex_plugin "techletes-superpowers@techletes-plugins"
  install_codex_plugin "github@openai-curated"

  section "Done"

  success "Techletes Codex setup completed."

  cat <<EOF

Next steps:
  1. Restart Codex.
  2. Open the Codex plugin directory.
  3. Install/enable: ${PLUGIN_NAME}
  4. Review and trust plugin hooks when prompted.

EOF
}

main "$@"
