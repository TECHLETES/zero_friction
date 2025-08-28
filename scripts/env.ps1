# scripts/env.ps1
$envFile = Join-Path (Get-Location) ".env"
if (Test-Path $envFile) {
  Get-Content $envFile | ForEach-Object {
    $line = $_.Trim()
    if ($line -and -not $line.StartsWith("#")) {
      $kv = $line -split "=", 2
      if ($kv.Count -eq 2) {
        $key = $kv[0].Trim()
        $val = $kv[1].Trim().Trim("'`"").Replace("`r","")
        $val = [Environment]::ExpandEnvironmentVariables($val)
        Set-Item -Path Env:$key -Value $val
      }
    }
  }
}

if (-not $env:PYTHONPATH) { $env:PYTHONPATH = "." }
if (-not $env:VENV_DIR)   { $env:VENV_DIR   = ".venv" }
if (-not $env:PROD_LOCK)  { $env:PROD_LOCK  = "requirements.txt" }
if (-not $env:DEV_LOCK)   { $env:DEV_LOCK   = "requirements-dev.txt" }
if (-not $env:PYPROJECT)  { $env:PYPROJECT  = "pyproject.toml" }

$activate = Join-Path $env:VENV_DIR "Scripts\Activate.ps1"
if (Test-Path $activate) { . $activate }
