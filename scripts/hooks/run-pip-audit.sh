#!/bin/bash
# Helper script to build pip-audit ignore arguments from pyproject.toml [tool.pip-audit]
# This ensures both pre-commit and CI use the same vulnerability exclusion list

set -euo pipefail

TMP_AUDIT_JSON=$(mktemp)
trap 'rm -f "$TMP_AUDIT_JSON"' EXIT

python3 - "$TMP_AUDIT_JSON" <<'EOF'
from __future__ import annotations

import json
import subprocess
import sys
import tomllib
from pathlib import Path


CONFIG_PATH = Path("pyproject.toml")
AUDIT_PATH = Path(sys.argv[1])

try:
    with CONFIG_PATH.open("rb") as config_file:
        config = tomllib.load(config_file)
except Exception as exc:
    print(f"Error reading {CONFIG_PATH}: {exc}", file=sys.stderr)
    sys.exit(1)

ignore_list = config.get("tool", {}).get("pip-audit", {}).get("ignore", [])

if not ignore_list:
    sys.exit(0)

result = subprocess.run(
    [
        "uv",
        "run",
        "pip-audit",
        "--format",
        "json",
        "--aliases",
        "on",
        "--progress-spinner",
        "off",
        "--output",
        str(AUDIT_PATH),
        ".",
    ],
    check=False,
    stdout=subprocess.DEVNULL,
    stderr=subprocess.PIPE,
    text=True,
)

if result.returncode not in (0, 1):
    if result.stderr:
        print(result.stderr, file=sys.stderr, end="")
    sys.exit(result.returncode)

try:
    with AUDIT_PATH.open("r", encoding="utf-8") as audit_file:
        audit_data = json.load(audit_file)
except Exception as exc:
    print(f"Error reading pip-audit JSON output: {exc}", file=sys.stderr)
    sys.exit(1)

active_ids: set[str] = set()
for dependency in audit_data.get("dependencies", []):
    for vulnerability in dependency.get("vulns", []):
        vuln_id = vulnerability.get("id")
        if vuln_id:
            active_ids.add(vuln_id)
        for alias in vulnerability.get("aliases", []):
            if alias:
                active_ids.add(alias)

stale_ignores = [vuln_id for vuln_id in ignore_list if vuln_id not in active_ids]

if stale_ignores:
    print(
        "Stale pip-audit ignore entries in pyproject.toml: "
        + ", ".join(stale_ignores),
        file=sys.stderr,
    )
    print(
        "Remove ignore entries for vulnerabilities that are no longer reported.",
        file=sys.stderr,
    )
    sys.exit(1)
EOF

IGNORE_ARGS=()
while IFS= read -r ignore_id; do
    IGNORE_ARGS+=("--ignore-vuln" "$ignore_id")
done < <(
    python3 <<'EOF'
import sys
import tomllib

try:
    with open("pyproject.toml", "rb") as config_file:
        config = tomllib.load(config_file)
except Exception as exc:
    print(f"Error reading pyproject.toml: {exc}", file=sys.stderr)
    sys.exit(1)

for ignore_id in config.get("tool", {}).get("pip-audit", {}).get("ignore", []):
    print(ignore_id)
EOF
)

uv run pip-audit "${IGNORE_ARGS[@]}" "$@"
