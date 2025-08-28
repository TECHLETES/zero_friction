# scripts/setup.ps1
<# Complete Windows setup for Python Basic Template #>
Param(
  [switch]$DevOnly,
  [switch]$ProdOnly
)

$ErrorActionPreference = "Stop"

function Step($m){ Write-Host "👉 $m" -ForegroundColor Cyan }
function Ok($m){ Write-Host "✅ $m" -ForegroundColor Green }
function Warn($m){ Write-Host "⚠ $m" -ForegroundColor Yellow }
function Fail($m){ Write-Host "❌ $m" -ForegroundColor Red; exit 1 }

# Load env (similar to .envrc)
. (Join-Path (Get-Location) "scripts\env.ps1")

# 1. sanity checks
Step "Checking prerequisites"
$py = (Get-Command python -ErrorAction SilentlyContinue)
if(-not $py){ Fail "Python not found, install Python 3.12+ from python.org or winget" }
$git = (Get-Command git -ErrorAction SilentlyContinue)
if(-not $git){ Fail "git not found, install Git for Windows" }
Ok "Python: $(python --version)"
Ok "git: $(git --version)"

# 2. venv
Step "Creating and activating virtual environment"
$venv = $env:VENV_DIR
if(Test-Path $venv){ Warn "Existing venv found, reusing" } else { python -m venv $venv }
$activate = Join-Path $venv "Scripts\Activate.ps1"
. $activate
Ok "Virtual environment activated"

# 3. pip tooling
Step "Upgrading pip and wheel"
python -m pip install --upgrade pip wheel build

# 4. dependencies (calls dependency.ps1)
if($DevOnly){ .\scripts\dependency.ps1 --dev }
elseif($ProdOnly){ .\scripts\dependency.ps1 --prod }
else { .\scripts\dependency.ps1 }

# 5. developer tools
Step "Installing developer tools"
pip install pre-commit detect-secrets nbstripout pip-audit jupytext pytest pytest-cov pytest-beartype beartype

# 6. Installing project
Step "Installing project in editable mode"
pip install -e .

# 6. pre-commit hooks
Step "Installing pre-commit hooks"
pre-commit install -c .pre-commit-windows.yaml
pre-commit autoupdate -c .pre-commit-windows.yaml
try { pre-commit run --all-files -c .pre-commit-windows.yaml } catch { Warn "Pre-commit found issues, fix then re-run" }

# 7. Install nbstripout
try {
  .\scripts\hooks\nbstripout-install.ps1
} catch {
  Warn "nbstripout install skipped: $($_.Exception.Message)"
}

# 8. validation
Step "Running import smoke test"
$env:PYTHONPATH = (Get-Location).Path
python -c "import utils.secrets; print('✅ All project modules import successfully')"

Ok "🎉 Windows setup complete"

