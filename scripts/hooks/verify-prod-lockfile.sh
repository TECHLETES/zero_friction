#!/usr/bin/env bash
set -euo pipefail
"$(dirname "$0")/verify-lockfile.sh" requirements.txt
