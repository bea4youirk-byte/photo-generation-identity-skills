$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
if ($env:CODEX_HOME) { $CodexRoot = $env:CODEX_HOME } else { $CodexRoot = Join-Path $HOME ".codex" }
$CodexSkills = Join-Path $CodexRoot "skills"
$AgentSkills = Join-Path (Join-Path $HOME ".agents") "skills"
New-Item -ItemType Directory -Force -Path $CodexSkills | Out-Null
New-Item -ItemType Directory -Force -Path $AgentSkills | Out-Null
Get-ChildItem (Join-Path $Root "skills") -Directory | ForEach-Object {
    $Name = $_.Name
    $CodexTarget = Join-Path $CodexSkills $Name
    $AgentTarget = Join-Path $AgentSkills $Name
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue $CodexTarget, $AgentTarget
    Copy-Item -Recurse -Force $_.FullName $CodexTarget
    Copy-Item -Recurse -Force $_.FullName $AgentTarget
    Write-Host "Installed $Name"
}
Write-Host "`nInstalled into:`n- $CodexSkills`n- $AgentSkills"
