#!/usr/bin/env bash
set -euo pipefail

test_root="$(mktemp -d)"
trap 'rm -rf "${test_root}"' EXIT

mkdir -p "${test_root}/repo/scripts/hooks" "${test_root}/bin"
cp scripts/hooks/run-detect-secrets.sh "${test_root}/repo/scripts/hooks/"
cp pyproject.toml "${test_root}/repo/pyproject.toml"
printf '{"findings": {}, "generated_at": "original"}\n' > "${test_root}/repo/.secret.baseline"

cat > "${test_root}/bin/uv" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

if [[ "${2:-}" == "python" ]]; then
    if [[ "$#" -ge 5 ]]; then
        exec /usr/bin/python3 - "${4}" "${5}"
    fi
    cat > /dev/null
    exit 0
fi

if [[ "${2:-}" == "detect-secrets" && "${3:-}" == "scan" && "${MUTATE_BASELINE:-}" == "1" ]]; then
    sed -i 's/original/changed/' .secret.baseline
fi

if [[ "${2:-}" == "detect-secrets-hook" ]]; then
    if [[ "${PRE_COMMIT_STATUS:-0}" -eq 3 ]]; then
        sed -i 's/original/line-number-updated/' .secret.baseline
    fi
    exit "${PRE_COMMIT_STATUS:-0}"
fi

printf '%s\n' "$*" >> "${TEST_ROOT}/uv.log"
EOF

cat > "${test_root}/bin/git" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == "diff" ]]; then
    exit 0
fi

if [[ "${1:-}" == "add" ]]; then
    printf '%s\n' "$*" >> "${TEST_ROOT}/git.log"
    exit 0
fi

printf 'Unexpected git invocation: %s\n' "$*" >&2
exit 1
EOF

chmod +x "${test_root}/bin/uv" "${test_root}/bin/git"

(
    cd "${test_root}/repo"
    PATH="${test_root}/bin:${PATH}" TEST_ROOT="${test_root}" \
        bash scripts/hooks/run-detect-secrets.sh --non-interactive
)

[[ "$(<"${test_root}/git.log")" == "add .secret.baseline" ]]

(
    cd "${test_root}/repo"
    PATH="${test_root}/bin:${PATH}" TEST_ROOT="${test_root}" MUTATE_BASELINE=1 \
        bash scripts/hooks/run-detect-secrets.sh --non-interactive
)

[[ "$(<"${test_root}/repo/.secret.baseline")" == \
    '{"findings": {}, "generated_at": "original"}' ]]

(
    cd "${test_root}/repo"
    PATH="${test_root}/bin:${PATH}" TEST_ROOT="${test_root}" \
        PRE_COMMIT_STATUS=3 bash scripts/hooks/run-detect-secrets.sh \
        --pre-commit example.txt
)
[[ "$(<"${test_root}/repo/.secret.baseline")" == \
    '{"findings": {}, "generated_at": "original"}' ]]

set +e
(
    cd "${test_root}/repo"
    PATH="${test_root}/bin:${PATH}" TEST_ROOT="${test_root}" \
        PRE_COMMIT_STATUS=1 bash scripts/hooks/run-detect-secrets.sh \
        --pre-commit example.txt
)
status=$?
set -e
[[ "$status" -eq 1 ]]
