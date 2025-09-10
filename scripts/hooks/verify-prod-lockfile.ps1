# Wrapper for requirements.txt
$ErrorActionPreference = "Stop"
& "$PSScriptRoot\verify-lockfile.ps1" -Lockfile "requirements.txt"
