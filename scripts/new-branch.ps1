<#
Creates a new branch from origin/main and sets upstream.
Usage:
  .\scripts\new-branch.ps1 feature/my-new-thing
#>

param(
  [Parameter(Position=0, Mandatory=$false)]
  [string]$Name
)

$ErrorActionPreference = "Stop"

function Fail($m){ Write-Host "❌ $m" -ForegroundColor Red; exit 1 }
function Step($m){ Write-Host "👉 $m" -ForegroundColor Cyan }
function Ok($m){ Write-Host "✅ $m" -ForegroundColor Green }

if (-not $Name -or $Name.Trim() -eq "") {
  $Name = Read-Host "Enter new branch name (e.g. feature/my-new-thing)"
  if (-not $Name) { Fail "Branch name is required." }
}

# Basic validation
if ($Name -match '^\s|[\s]$') { Fail "Branch name cannot start or end with space." }
if ($Name -match '[~^:\?\*\[\]\\ ]') { Fail "Branch name contains invalid characters." }

# Ensure we are in a Git repo
git rev-parse --git-dir *> $null 2>&1 || Fail "Not inside a Git repository."

Step "Fetching latest refs"
git fetch --prune

# Ensure main exists locally
$main = "main"
if (-not (git show-ref --verify --quiet "refs/heads/$main")) {
  Step "Creating local '$main' tracking branch"
  git checkout -B $main "origin/$main"
} else {
  Step "Checking out '$main'"
  git checkout $main
}

Step "Resetting '$main' to origin/$main"
git reset --hard "origin/$main"

Step "Creating new branch '$Name' from origin/$main"
git checkout -B $Name "origin/$main"

Step "Pushing and setting upstream"
git push -u origin $Name

Ok "Branch '$Name' ready and tracking origin/$Name."
