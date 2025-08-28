param([string[]]$Args)

$changed = git diff --cached --name-only
$targets = @('requirements.txt', 'requirements-dev.txt')
$edited = $changed | Where-Object { $targets -contains $_ }

if ($edited) {
  Write-Host "requirements files changed. Use pip-compile to update lock files." -ForegroundColor Red
  exit 1
}
exit 0
