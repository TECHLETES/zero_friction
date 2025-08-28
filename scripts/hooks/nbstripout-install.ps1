# Installs nbstripout as a Git filter for the current repo
# Run once per repo, or call from setup.ps1

$ErrorActionPreference = "Stop"

# Ensure nbstripout is present in the venv
if (-not (python -m pip show nbstripout 2>$null)) {
  python -m pip install nbstripout | Out-Null
}

# Install the filter in this repo
python -m nbstripout --install

Write-Host "✅ nbstripout Git filter installed for this repository." -ForegroundColor Green
