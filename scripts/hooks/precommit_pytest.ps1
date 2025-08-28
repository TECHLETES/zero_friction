$env:PYTHONDONTWRITEBYTECODE = "1"
python -m pytest --cov --cov-fail-under=80 --beartype-packages=utils,example
exit $LASTEXITCODE
