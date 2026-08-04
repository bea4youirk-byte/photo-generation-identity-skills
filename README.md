# Photo Generation Identity Skills

Reusable workflows for photorealistic image generation and editing where the same real person must remain recognizable across reference-based scenes and multi-shot series.

## Primary skill

`photo-identity-generation` is the consolidated project skill.

Invoke it with:

```text
$photo-identity-generation
```

It handles:

- prompt-only preparation without accidental generation;
- identity and body reference selection;
- one-scene reference reconstruction;
- identity-consistent portrait and fashion series;
- minimal face/body/scene corrections;
- QA, source auditing, project-state continuation, and repository persistence.

## One-click private bootstrap for Windows

1. Extract the release ZIP.
2. Double-click `START_PRIVATE_PROJECT.cmd`.
3. Complete GitHub browser authorization only if GitHub CLI requests it.

The bootstrap installs the skills, changes the existing repository to private (or creates it privately if absent), commits the current project tree, pushes `main`, and verifies visibility/read/write state.

## Repository layout

```text
skills/photo-identity-generation/   Primary installable skill
skills/*/                           Focused supporting modules
references/proven-prompts.md        Owner-provided successful patterns
templates/                          Reusable prompt templates
examples/                           Worked examples
PROJECT_STATE.md                    Current stage and next action
SOURCES.md                          Source and dependency audit
SECURITY.md                         Privacy and secret-handling rules
scripts/                            Installers and private bootstrap
```

## Install only

Linux/macOS:

```bash
bash scripts/install.sh
```

Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/install.ps1
```

The installers copy the skills into both `~/.codex/skills/` and `~/.agents/skills/`.

## Privacy

Do not store personal reference photographs in a public repository. No secrets belong in this repository.
