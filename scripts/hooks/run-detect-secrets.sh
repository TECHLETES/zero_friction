#!/usr/bin/env bash
# Run detect-secrets with the repository's shared file exclusions.
#
# Normal mode updates the baseline with a scan and starts the interactive audit
# when a terminal is available. Pre-commit mode uses detect-secrets-hook so the
# committed baseline is enforced without modifying it or starting an audit.

set -euo pipefail

usage() {
    cat <<'EOF'
Usage:
  scripts/hooks/run-detect-secrets.sh [--non-interactive]
  scripts/hooks/run-detect-secrets.sh --pre-commit [files ...]

Normal mode scans with .secret.baseline and audits it when stdin and stdout
are terminals. --non-interactive skips the audit. --pre-commit checks the
files supplied by pre-commit without changing the baseline.
EOF
}

MODE="scan"
POSITIONAL=()

while (($# > 0)); do
    case "$1" in
        --help|-h)
            usage
            exit 0
            ;;
        --non-interactive)
            MODE="non-interactive"
            shift
            ;;
        --pre-commit)
            MODE="pre-commit"
            shift
            ;;
        --)
            shift
            POSITIONAL+=("$@")
            break
            ;;
        *)
            POSITIONAL+=("$1")
            shift
            ;;
    esac
done

EXCLUDE_REGEX="$(uv run python - <<'PY'
from __future__ import annotations

import re
import sys
import tomllib
from pathlib import Path


try:
    with Path("pyproject.toml").open("rb") as config_file:
        config = tomllib.load(config_file)
except (OSError, tomllib.TOMLDecodeError) as exc:
    print(f"Error reading pyproject.toml: {exc}", file=sys.stderr)
    raise SystemExit(1) from exc

exclude_files = config.get("tool", {}).get("detect-secrets", {}).get(
    "exclude_files", []
)

if not isinstance(exclude_files, list) or not all(
    isinstance(pattern, str) for pattern in exclude_files
):
    print(
        "[tool.detect-secrets].exclude_files must be a list of strings",
        file=sys.stderr,
    )
    raise SystemExit(1)

try:
    for pattern in exclude_files:
        re.compile(pattern)
except re.error as exc:
    print(f"Invalid detect-secrets exclude regex: {exc}", file=sys.stderr)
    raise SystemExit(1) from exc

print("|".join(f"(?:{pattern})" for pattern in exclude_files))
PY
)"

EXCLUDE_ARGS=()
if [[ -n "$EXCLUDE_REGEX" ]]; then
    EXCLUDE_ARGS=(--exclude-files "$EXCLUDE_REGEX")
fi

BASELINE_BACKUP=""
cleanup() {
    if [[ -n "$BASELINE_BACKUP" ]]; then
        rm -f "$BASELINE_BACKUP"
    fi
}
trap cleanup EXIT

if [[ "$MODE" == "pre-commit" ]]; then
    exec uv run detect-secrets-hook \
        --baseline .secret.baseline \
        "${EXCLUDE_ARGS[@]}" \
        "${POSITIONAL[@]}"
fi

if ((${#POSITIONAL[@]} > 0)); then
    echo "Unexpected positional arguments in scan mode: ${POSITIONAL[*]}" >&2
    usage >&2
    exit 2
fi

if [[ -f .secret.baseline ]]; then
    BASELINE_BACKUP="$(mktemp)"
    cp .secret.baseline "$BASELINE_BACKUP"
fi

uv run detect-secrets scan --baseline .secret.baseline "${EXCLUDE_ARGS[@]}"

# detect-secrets refreshes generated_at on every scan. Avoid a working-tree
# change when the scan found no substantive baseline changes.
if [[ -n "$BASELINE_BACKUP" ]] && uv run python - "$BASELINE_BACKUP" .secret.baseline <<'PY'
import json
import sys
from pathlib import Path


def comparable(path: str) -> dict[str, object]:
    data = json.loads(Path(path).read_text(encoding="utf-8"))
    data.pop("generated_at", None)
    return data


raise SystemExit(comparable(sys.argv[1]) != comparable(sys.argv[2]))
PY
then
    cp "$BASELINE_BACKUP" .secret.baseline
fi

# Keep the generated baseline with the scan that produced it. Leave an
# already-staged baseline untouched so callers can review their staged version.
if git diff --cached --quiet -- .secret.baseline; then
    git add .secret.baseline
fi

if [[ "$MODE" == "non-interactive" || ! -t 0 || ! -t 1 ]]; then
    echo "Skipping detect-secrets audit because no interactive terminal is available."
    echo "Run 'scripts/hooks/run-detect-secrets.sh' in the devcontainer to audit."
    exit 0
fi

exec uv run detect-secrets audit .secret.baseline
