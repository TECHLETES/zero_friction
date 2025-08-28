# scripts/dependency.ps1
# Usage:
#   .\scripts\dependency.ps1            # install prod + dev
#   .\scripts\dependency.ps1 --prod     # only production
#   .\scripts\dependency.ps1 --dev      # only development

param(
  [switch]$prod,
  [switch]$dev
)

$ErrorActionPreference = 'Stop'

# read same env vars as bash script, with defaults
$VENV_DIR  = if ($env:VENV_DIR)  { $env:VENV_DIR }  else { '.venv' }
$PYPROJECT = if ($env:PYPROJECT) { $env:PYPROJECT } else { 'pyproject.toml' }
$PROD_LOCK = if ($env:PROD_LOCK) { $env:PROD_LOCK } else { 'requirements.txt' }
$DEV_LOCK  = if ($env:DEV_LOCK)  { $env:DEV_LOCK }  else { 'requirements-dev.txt' }

function Step($m){ Write-Host $m -ForegroundColor Yellow }
function Ok($m){ Write-Host $m -ForegroundColor Green }
function Fail($m){ Write-Host $m -ForegroundColor Red; exit 1 }

# decide what to install
$installProd = $false
$installDev  = $false
if (-not $prod -and -not $dev) { $installProd = $true; $installDev = $true }
if ($prod) { $installProd = $true }
if ($dev)  { $installDev  = $true }

# activate venv
Step "⏳ Activating virtualenv at '$VENV_DIR'..."
$activate = Join-Path $VENV_DIR 'Scripts\Activate.ps1'
if (-not (Test-Path $activate)) {
  Fail "Virtualenv not found at '$VENV_DIR'. Create one with: python -m venv $VENV_DIR"
}
. $activate
Ok "✅ Virtualenv activated"

# ensure pip-tools
Step "🔍 Ensuring pip-tools is installed..."
$pipTools = & pip show pip-tools 2>$null
if (-not $pipTools) {
  Step "➡️ Installing pip-tools..."
  pip install pip-tools | Out-Null
} else {
  Ok "✅ pip-tools is already installed"
}

# production
if ($installProd) {
  Step "Compiling production lockfile from '$PYPROJECT'..."
  pip-compile $PYPROJECT --output-file $PROD_LOCK --generate-hashes

  Step "Installing production dependencies..."
  pip install --require-hashes -r $PROD_LOCK
}

# development
if ($installDev) {
  Step "Compiling development lockfile from '$PYPROJECT' extras..."
  pip-compile $PYPROJECT --extra dev --output-file $DEV_LOCK --generate-hashes

  Step "Installing development dependencies..."
  pip install --require-hashes -r $DEV_LOCK
}

# verify
Step "🔎 Verifying installed packages..."
pip check | Out-Host

Ok "🎉 Setup complete!"
if ($installProd) { Ok "  • Production deps from $PROD_LOCK" }
if ($installDev)  { Ok "  • Dev deps from $DEV_LOCK" }
