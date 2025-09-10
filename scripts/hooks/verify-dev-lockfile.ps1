# Wrapper for requirements-dev.txt
$ErrorActionPreference = "Stop"
& "$PSScriptRoot\verify-lockfile.ps1" -Lockfile "requirements-dev.txt"
