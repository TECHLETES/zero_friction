#!/usr/bin/env bash
set -e

# Activate your local venv (adjust path if needed)
source venv/bin/activate

# Install your project in editable mode with dev extras
pip install -q -e .[dev]

# Run pytest with coverage and beartype runtime checks
pytest --cov --cov-fail-under=80 --beartype-packages=utils,example