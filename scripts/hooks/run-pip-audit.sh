#!/bin/bash
# Helper script to build pip-audit ignore arguments from pyproject.toml [tool.pip-audit]
# This ensures both pre-commit and CI use the same CVE exclusion list

# Extract ignore list from pyproject.toml using Python
IGNORE_ARGS=$(python3 << 'EOF'
import tomllib
import sys

try:
    with open("pyproject.toml", "rb") as f:
        config = tomllib.load(f)

    # Get the ignore list from [tool.pip-audit]
    ignore_list = config.get("tool", {}).get("pip-audit", {}).get("ignore", [])

    # Build the arguments
    args = " ".join([f"--ignore-vuln {cve}" for cve in ignore_list])
    print(args)
except Exception as e:
    print(f"Error reading pyproject.toml: {e}", file=sys.stderr)
    sys.exit(1)
EOF
)

# Run pip-audit with the exclusions from pyproject.toml
pip-audit $IGNORE_ARGS "$@"
