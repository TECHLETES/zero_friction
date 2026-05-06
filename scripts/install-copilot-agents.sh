#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mode="copy"
force="true"
install_agents="true"
install_skills="true"
audit_skill_name="audit-python-template-compliance"
audit_skill_manifest="assets/config-template-manifest.txt"
audit_skill_generated_dir="assets/config-template"

usage() {
  cat <<'EOF'
Install Copilot agent definitions and skills from this repository.

Usage:
  ./scripts/install-copilot-agents.sh [--copy|--link] [--no-force] [--agents-only|--skills-only]

Options:
  --copy          Copy the files into the target directory (default).
  --link          Symlink the files into the target directory.
  --force         Replace existing files with the repository versions.
                 This is the default behavior.
  --no-force      Skip existing files instead of replacing them.
  --agents-only   Install only agent definitions (skip skills).
  --skills-only   Install only skills (skip agents).
  --help          Show this help message.

Environment:
  COPILOT_AGENTS_DIR  Override agents install target. Defaults to ~/.copilot/agents.
  COPILOT_SKILLS_DIR  Override skills install target. Defaults to ~/.copilot/skills.

Examples:
  ./scripts/install-copilot-agents.sh
  ./scripts/install-copilot-agents.sh --link
  ./scripts/install-copilot-agents.sh --no-force
  ./scripts/install-copilot-agents.sh --skills-only
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
    --no-force)
      force="false"
      ;;
    --agents-only)
      install_skills="false"
      ;;
    --skills-only)
      install_agents="false"
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

# Function to install files from source to target directory
install_copilot_component() {
  local component_name="$1"
  local source_dir="$2"
  local target_dir="$3"
  local file_pattern="$4"

  if [[ ! -d "${source_dir}" ]]; then
    echo "Skipping ${component_name}: source directory not found (${source_dir})"
    return 1
  fi

  mkdir -p "${target_dir}"
  shopt -s nullglob
  local source_files=("${source_dir}"/${file_pattern})

  if [[ ${#source_files[@]} -eq 0 ]]; then
    echo "No ${component_name} files found in ${source_dir}"
    return 1
  fi

  local installed=0
  local skipped=0
  local total=${#source_files[@]}

  for source_path in "${source_files[@]}"; do
    local file_name="$(basename "${source_path}")"
    local target_path="${target_dir}/${file_name}"

    if [[ -e "${target_path}" || -L "${target_path}" ]]; then
      if [[ "${force}" == "true" ]]; then
        rm -f "${target_path}"
      else
        echo "  Skipping existing ${file_name} (use --force to replace)"
        skipped=$((skipped + 1))
        continue
      fi
    fi

    if [[ "${mode}" == "link" ]]; then
      ln -s "${source_path}" "${target_path}"
      echo "  Linked ${file_name}"
    else
      cp -r "${source_path}" "${target_path}"
      echo "  Copied ${file_name}"
    fi

    installed=$((installed + 1))
  done

  echo "${component_name}: Installed ${installed}/${total} file(s) to ${target_dir}"
  if [[ ${skipped} -gt 0 ]]; then
    echo "  (${skipped} existing file(s) skipped)"
  fi

  return 0
}

install_audit_template_skill() {
  local skill_dir="$1"
  local target_skill_dir="$2"
  local mode_arg="$3"
  local manifest_path="${skill_dir}/${audit_skill_manifest}"
  local generated_dir="${target_skill_dir}/${audit_skill_generated_dir}"

  if [[ ! -f "${manifest_path}" ]]; then
    echo "  Missing ${audit_skill_manifest} for ${audit_skill_name}" >&2
    return 1
  fi

  if [[ "${mode_arg}" == "link" ]]; then
    echo "  ${audit_skill_name}: link mode falls back to copy so repo config assets can be materialized"
  fi

  mkdir -p "${target_skill_dir}"
  cp -r "${skill_dir}/." "${target_skill_dir}"
  rm -rf "${generated_dir}"
  mkdir -p "${generated_dir}"

  local copied_assets=0

  while IFS= read -r relative_path || [[ -n "${relative_path}" ]]; do
    if [[ -z "${relative_path}" || "${relative_path}" =~ ^# ]]; then
      continue
    fi

    local source_path="${repo_root}/${relative_path}"
    local target_path="${generated_dir}/${relative_path}"

    if [[ ! -e "${source_path}" ]]; then
      echo "  Missing repo asset for ${audit_skill_name}: ${relative_path}" >&2
      return 1
    fi

    mkdir -p "$(dirname "${target_path}")"
    cp -r "${source_path}" "${target_path}"
    copied_assets=$((copied_assets + 1))
  done < "${manifest_path}"

  echo "  Copied ${audit_skill_name}/"
  echo "  Materialized ${copied_assets} repo config asset(s)"

  return 0
}

# Install agents
if [[ "${install_agents}" == "true" ]]; then
  echo "Installing Copilot Agents..."
  agents_source="${repo_root}/.copilot/agents"
  agents_target="${COPILOT_AGENTS_DIR:-${HOME}/.copilot/agents}"
  install_copilot_component "Agents" "${agents_source}" "${agents_target}" "*.agent.md"
fi

# Function to install skills (subdirectories with SKILL.md)
install_skills_function() {
  local skills_source="$1"
  local skills_target="$2"
  local mode_arg="$3"
  local force_arg="$4"

  if [[ ! -d "${skills_source}" ]]; then
    echo "Skipping skills: source directory not found (${skills_source})"
    return 1
  fi

  mkdir -p "${skills_target}"
  shopt -s nullglob
  local skill_dirs=("${skills_source}"/*/SKILL.md)

  if [[ ${#skill_dirs[@]} -eq 0 ]]; then
    echo "No skill definitions found in ${skills_source}"
    return 1
  fi

  local installed=0
  local skipped=0

  # Process each skill (subdirectory with SKILL.md)
  for skill_skill_md in "${skill_dirs[@]}"; do
    local skill_dir="$(dirname "${skill_skill_md}")"
    local skill_name="$(basename "${skill_dir}")"
    local target_skill_dir="${skills_target}/${skill_name}"

    if [[ -e "${target_skill_dir}" || -L "${target_skill_dir}" ]]; then
      if [[ "${force_arg}" == "true" ]]; then
        rm -rf "${target_skill_dir}"
      else
        echo "  Skipping existing ${skill_name}/ (use --force to replace)"
        skipped=$((skipped + 1))
        continue
      fi
    fi

    if [[ "${skill_name}" == "${audit_skill_name}" ]]; then
      install_audit_template_skill "${skill_dir}" "${target_skill_dir}" "${mode_arg}"
    elif [[ "${mode_arg}" == "link" ]]; then
      ln -s "${skill_dir}" "${target_skill_dir}"
      echo "  Linked ${skill_name}/"
    else
      cp -r "${skill_dir}" "${target_skill_dir}"
      echo "  Copied ${skill_name}/"
    fi

    installed=$((installed + 1))
  done

  echo "Skills: Installed ${installed} skill(s) to ${skills_target}"
  if [[ ${skipped} -gt 0 ]]; then
    echo "  (${skipped} existing skill(s) skipped)"
  fi

  return 0
}

# Install skills (including subdirectories)
if [[ "${install_skills}" == "true" ]]; then
  echo "Installing Copilot Skills..."
  skills_source="${repo_root}/.copilot/skills"
  skills_target="${COPILOT_SKILLS_DIR:-${HOME}/.copilot/skills}"
  install_skills_function "${skills_source}" "${skills_target}" "${mode}" "${force}"
fi

echo
echo "✓ Installation complete!"
