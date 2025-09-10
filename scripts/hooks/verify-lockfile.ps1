Param(
  [Parameter(Mandatory = $true)]
  [ValidateNotNullOrEmpty()]
  [string]$Lockfile,

  [string]$PyProject = "pyproject.toml"
)

$ErrorActionPreference = "Stop"

function Step($m){ Write-Host "👉 $m" -ForegroundColor Cyan }
function Ok($m){ Write-Host "✅ $m" -ForegroundColor Green }
function Fail($m){ Write-Host "❌ $m" -ForegroundColor Red; exit 1 }

if (-not (Test-Path $PyProject)) { Fail "Cannot find $PyProject in repo root" }
if (-not (Test-Path $Lockfile)) { Fail "Cannot find $Lockfile in repo root" }

$python = (Get-Command python -ErrorAction SilentlyContinue)
if (-not $python) { Fail "Python not found, install Python 3.12+ and ensure it is on PATH" }

$temp = [System.IO.Path]::GetTempFileName()
try {
  Step "Verifying integrity of '$Lockfile'"

  $isDev = ($Lockfile -like "*requirements-dev.txt")

  $args = @("piptools", "compile", $PyProject, "--output-file", $temp)
  if ($isDev) { $args += @("--extra", "dev") }

  python -m $args | Out-Null

  $hashA = Get-FileHash -Algorithm SHA256 -Path $Lockfile
  $hashB = Get-FileHash -Algorithm SHA256 -Path $temp

  if ($hashA.Hash -ne $hashB.Hash) {
    Fail ("'$Lockfile' is out of date. Remove it and run '.\scripts\dependency.ps1', then commit the regenerated file.")
  }

  Ok "'$Lockfile' is valid and up to date"
}
finally {
  if (Test-Path $temp) { Remove-Item $temp -Force -ErrorAction SilentlyContinue }
}
