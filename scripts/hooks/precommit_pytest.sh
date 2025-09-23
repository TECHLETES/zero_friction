#!/usr/bin/env bash
set -e

# Activate your local venv (.venv preferred, fallback to venv)
if [ -d ".venv" ]; then
    source .venv/bin/activate
elif [ -d "venv" ]; then
    source venv/bin/activate
else
    echo "No virtual environment found (.venv or venv)."
    exit 1
fi

# Install your project in editable mode with dev extras
pip install -q -e .[dev]

# Run pytest with coverage and beartype runtime checks
pytest --cov --cov-fail-under=80 --beartype-packages=utils,example