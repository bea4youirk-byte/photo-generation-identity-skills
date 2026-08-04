#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CODEX_SKILLS="${CODEX_HOME:-$HOME/.codex}/skills"
AGENT_SKILLS="$HOME/.agents/skills"
mkdir -p "$CODEX_SKILLS" "$AGENT_SKILLS"
for dir in "$ROOT"/skills/*; do
  [ -d "$dir" ] || continue
  name="$(basename "$dir")"
  rm -rf "$CODEX_SKILLS/$name" "$AGENT_SKILLS/$name"
  cp -R "$dir" "$CODEX_SKILLS/$name"
  cp -R "$dir" "$AGENT_SKILLS/$name"
  printf 'Installed %s\n' "$name"
done
printf '\nInstalled into:\n- %s\n- %s\n' "$CODEX_SKILLS" "$AGENT_SKILLS"
