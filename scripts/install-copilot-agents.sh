#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="${repo_root}/.copilot/agents"
target_dir="${COPILOT_AGENTS_DIR:-${HOME}/.copilot/agents}"
mode="copy"
force="false"

usage() {
  cat <<'EOF'
Install the shared Copilot agent definitions from this repository.

Usage:
  ./scripts/install-copilot-agents.sh [--copy|--link] [--force]

Options:
  --copy   Copy the agent files into the target directory (default).
  --link   Symlink the agent files into the target directory.
  --force  Replace existing files with the repository versions.
  --help   Show this help message.

Environment:
  COPILOT_AGENTS_DIR  Override the install target. Defaults to ~/.copilot/agents.

Examples:
  ./scripts/install-copilot-agents.sh
  ./scripts/install-copilot-agents.sh --link
  COPILOT_AGENTS_DIR="$HOME/.copilot/agents" ./scripts/install-copilot-agents.sh --force
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --copy)
      mode="copy"
      ;;
    --link)
      mode="link"
      ;;
    --force)
      force="true"
      ;;
    --help|-h)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
  shift
done

if [[ ! -d "${source_dir}" ]]; then
  echo "Source directory not found: ${source_dir}" >&2
  exit 1
fi

mkdir -p "${target_dir}"
shopt -s nullglob
agent_files=("${source_dir}"/*.agent.md)

if [[ ${#agent_files[@]} -eq 0 ]]; then
  echo "No agent files found in ${source_dir}" >&2
  exit 1
fi

installed=0
skipped=0

for source_path in "${agent_files[@]}"; do
  file_name="$(basename "${source_path}")"
  target_path="${target_dir}/${file_name}"

  if [[ -e "${target_path}" || -L "${target_path}" ]]; then
    if [[ "${force}" == "true" ]]; then
      rm -f "${target_path}"
    else
      echo "Skipping existing ${target_path} (use --force to replace it)"
      skipped=$((skipped + 1))
      continue
    fi
  fi

  if [[ "${mode}" == "link" ]]; then
    ln -s "${source_path}" "${target_path}"
    echo "Linked ${file_name} -> ${target_path}"
  else
    cp "${source_path}" "${target_path}"
    echo "Copied ${file_name} -> ${target_path}"
  fi

  installed=$((installed + 1))
done

echo
echo "Installed ${installed} agent file(s) into ${target_dir}."
if [[ ${skipped} -gt 0 ]]; then
  echo "Skipped ${skipped} existing file(s)."
fi
