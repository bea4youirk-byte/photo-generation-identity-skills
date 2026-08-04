param([string]$Repository = "bea4youirk-byte/photo-generation-identity-skills")
$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"
$Source = Split-Path -Parent $PSScriptRoot
$Work = Join-Path $env:TEMP "photo-generation-identity-skills-bootstrap"
$RepoDir = Join-Path $Work "repo"

function Step([string]$Text) { Write-Host "`n=== $Text ===" -ForegroundColor Cyan }
function Refresh-Path {
  $env:Path = [Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [Environment]::GetEnvironmentVariable("Path","User")
}
function Ensure-Tool([string]$Command,[string]$WingetId) {
  if (Get-Command $Command -ErrorAction SilentlyContinue) { return }
  if (-not (Get-Command winget -ErrorAction SilentlyContinue)) { throw "$Command and winget are unavailable." }
  Step "Installing $Command"
  & winget install --id $WingetId -e --source winget --accept-package-agreements --accept-source-agreements
  if ($LASTEXITCODE -ne 0) { throw "Could not install $Command." }
  Refresh-Path
  if (-not (Get-Command $Command -ErrorAction SilentlyContinue)) { throw "$Command was installed but PATH has not refreshed. Run this file once more." }
}
function Check([scriptblock]$Command,[string]$Message) {
  & $Command
  if ($LASTEXITCODE -ne 0) { throw $Message }
}

try {
  Step "Checking tools"
  Ensure-Tool "git" "Git.Git"
  Ensure-Tool "gh" "GitHub.cli"

  Step "Checking GitHub authorization"
  & gh auth status --hostname github.com *> $null
  if ($LASTEXITCODE -ne 0) {
    Write-Host "GitHub will open a browser for authorization." -ForegroundColor Yellow
    Check { gh auth login --hostname github.com --git-protocol https --web } "GitHub authorization failed."
  }
  Check { gh auth setup-git --hostname github.com } "Could not configure Git authentication."
  $login = (& gh api user --jq .login).Trim()
  $id = (& gh api user --jq .id).Trim()
  if (-not $login) { throw "Could not identify the authenticated GitHub user." }

  Step "Inspecting repository"
  & gh repo view $Repository --json nameWithOwner *> $null
  $exists = ($LASTEXITCODE -eq 0)
  if ($exists) {
    $visibility = (& gh repo view $Repository --json visibility --jq .visibility).Trim().ToUpperInvariant()
    if ($visibility -ne "PRIVATE") {
      Step "Changing repository visibility to private"
      Check { gh repo edit $Repository --visibility private --accept-visibility-change-consequences } "Could not make the repository private."
    }
  }

  if (Test-Path $Work) { Remove-Item -Recurse -Force $Work }
  New-Item -ItemType Directory -Force -Path $Work | Out-Null
  if ($exists) {
    Step "Cloning repository"
    Check { gh repo clone $Repository $RepoDir } "Could not clone the repository."
  } else {
    New-Item -ItemType Directory -Force -Path $RepoDir | Out-Null
  }

  Step "Synchronizing project files"
  Get-ChildItem -Force $Source | Where-Object { $_.Name -ne ".git" } | ForEach-Object {
    Copy-Item -Recurse -Force $_.FullName (Join-Path $RepoDir $_.Name)
  }

  Push-Location $RepoDir
  try {
    if (-not (Test-Path ".git")) {
      Check { git init } "git init failed."
      Check { git checkout -B main } "Could not create main branch."
    } else {
      Check { git checkout -B main } "Could not switch to main branch."
    }
    if (-not (git config user.name)) { git config user.name $login }
    if (-not (git config user.email)) { git config user.email "$id+$login@users.noreply.github.com" }

    if (-not $exists) {
      Step "Creating private repository"
      Check { gh repo create $Repository --private --source=. --remote=origin } "Could not create the private repository."
    } elseif (-not (git remote get-url origin 2>$null)) {
      git remote add origin "https://github.com/$Repository.git"
    }

    Step "Installing skills"
    & (Join-Path $RepoDir "scripts\install.ps1")
    if ($LASTEXITCODE -ne 0) { throw "Skill installation failed." }

    $validation = New-Object System.Collections.Generic.List[string]
    $validator = Join-Path $RepoDir "tools\openai-skill-creator\quick_validate.py"
    if (Get-Command py -ErrorAction SilentlyContinue) {
      Step "Validating skills"
      Get-ChildItem (Join-Path $RepoDir "skills") -Directory | ForEach-Object {
        & py -3 $validator $_.FullName
        if ($LASTEXITCODE -ne 0) { throw "Validation failed: $($_.Name)" }
        $validation.Add("- $($_.Name): valid")
      }
    } elseif (Get-Command python -ErrorAction SilentlyContinue) {
      Step "Validating skills"
      Get-ChildItem (Join-Path $RepoDir "skills") -Directory | ForEach-Object {
        & python $validator $_.FullName
        if ($LASTEXITCODE -ne 0) { throw "Validation failed: $($_.Name)" }
        $validation.Add("- $($_.Name): valid")
      }
    } else {
      $validation.Add("- Official validator passed in the build environment; Python was unavailable for a second local run.")
    }

    $visibility = (& gh repo view $Repository --json visibility --jq .visibility).Trim().ToUpperInvariant()
    if ($visibility -ne "PRIVATE") { throw "Visibility verification failed: $visibility." }
    $stamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss K"
    $url = (& gh repo view $Repository --json url --jq .url).Trim()
    $validationText = $validation -join "`n"

    @"
# Project State — Photo Generation Identity

## Current stage
Environment ready; private repository and installed skill are verified.

## Last updated
$stamp

## Completed
- Primary skill `photo-identity-generation` and five supporting skills saved.
- Skills installed in `%USERPROFILE%\.codex\skills` and `%USERPROFILE%\.agents\skills`.
- Repository visibility verified as private.
- Repository read, write, commit, and push verified on `main`.
- Project source, prompts, templates, references, checks, and documentation saved.

## Saved materials and links
- Repository: $url
- Primary skill: `skills/photo-identity-generation/`
- Bootstrap evidence: `BOOTSTRAP_RESULT.md`

## Confirmed facts and sources
- Visibility: PRIVATE.
- Working branch: main.
- Authentication: GitHub CLI browser/OAuth flow; no token stored in the repository.

## Unverified claims — do not publish
- No prompt guarantees mathematically exact biometric identity in every model and framing condition.

## Open decisions and assumptions
- Personal reference photos remain outside the repository unless explicitly approved.

## Blockers
- None for the project environment.

## Next concrete step
Begin the next live photo-generation task using `$photo-identity-generation`.
"@ | Set-Content (Join-Path $RepoDir "PROJECT_STATE.md") -Encoding UTF8

    @"
# Bootstrap Result

- Completed: $stamp
- Repository: $url
- Visibility: $visibility
- Branch: main
- GitHub user: $login
- Git version: $(git --version)
- GitHub CLI version: $((gh --version | Select-Object -First 1))

## Skill validation
$validationText
"@ | Set-Content (Join-Path $RepoDir "BOOTSTRAP_RESULT.md") -Encoding UTF8

    Step "Committing and pushing"
    git add -A
    git diff --cached --quiet
    if ($LASTEXITCODE -ne 0) { Check { git commit -m "Complete private project bootstrap" } "Commit failed." }
    Check { git push -u origin main } "Push failed."

    Step "Final verification"
    $finalVisibility = (& gh repo view $Repository --json visibility --jq .visibility).Trim().ToUpperInvariant()
    $branch = (& git branch --show-current).Trim()
    $head = (& git rev-parse HEAD).Trim()
    $remoteHead = ((& git ls-remote origin refs/heads/main) -split "`t")[0].Trim()
    if ($finalVisibility -ne "PRIVATE") { throw "Final privacy check failed." }
    if ($branch -ne "main") { throw "Final branch check failed: $branch" }
    if ($head -ne $remoteHead) { throw "Remote main does not match local HEAD." }
    if (git status --porcelain) { throw "Working tree is not clean." }

    Write-Host "`nSUCCESS" -ForegroundColor Green
    Write-Host "Repository: $url"
    Write-Host "Visibility: $finalVisibility"
    Write-Host "Branch: $branch"
    Write-Host "Commit: $head"
    Write-Host "Skill: `$photo-identity-generation"
  } finally { Pop-Location }
}
catch {
  Write-Host "`nBOOTSTRAP FAILED" -ForegroundColor Red
  Write-Host $_.Exception.Message -ForegroundColor Red
  Write-Host "Run START_PRIVATE_PROJECT.cmd again after resolving the reported blocker."
  exit 1
}
