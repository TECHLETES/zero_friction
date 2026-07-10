#!/usr/bin/env bash
set -euo pipefail

test_root="$(mktemp -d)"
trap 'rm -rf "${test_root}"' EXIT

mkdir -p "${test_root}/repo/.devcontainer" "${test_root}/bin"
cp .devcontainer/post-attach.sh "${test_root}/repo/.devcontainer/post-attach.sh"

cat > "${test_root}/bin/git" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

state_file="${TEST_ROOT}/remote-state"
command="${1:-}"
subcommand="${2:-}"

case "${command} ${subcommand}" in
  "rev-parse --git-dir")
    exit 0
    ;;
  "remote get-url")
    [[ -f "${state_file}" ]]
    ;;
  "remote add")
    printf '%s\n' "${4}" > "${state_file}"
    ;;
  "symbolic-ref --quiet")
    printf '%s\n' main
    ;;
  "fetch template")
    if [[ "${FAIL_FETCH:-}" == "1" ]]; then
      exit 128
    fi
    ;;
  "show-ref --verify")
    ;;
  "rev-list --count")
    printf '%s\n' 0
    ;;
  "status --porcelain=v1")
    ;;
  *)
    printf 'Unexpected git invocation: %s\n' "$*" >&2
    exit 1
    ;;
esac
EOF
chmod +x "${test_root}/bin/git"

output="$({
  cd "${test_root}/repo"
  PATH="${test_root}/bin:${PATH}" TEST_ROOT="${test_root}" \
    bash .devcontainer/post-attach.sh
} 2>&1)"

[[ "${output}" == *"Template remote not configured; adding it."* ]]
[[ "$(<"${test_root}/remote-state")" == \
  "git@github.com:TECHLETES/python_template.git" ]]
[[ "${output}" == *"Template is up to date."* ]]

set +e
failed_fetch_output="$({
  cd "${test_root}/repo"
  PATH="${test_root}/bin:${PATH}" TEST_ROOT="${test_root}" FAIL_FETCH=1 \
    bash .devcontainer/post-attach.sh
} 2>&1)"
failed_fetch_status=$?
set -e

[[ "${failed_fetch_status}" -eq 0 ]]
[[ "${failed_fetch_output}" == *"Template update check failed; continuing without updates."* ]]
