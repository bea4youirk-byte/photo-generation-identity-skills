# Photo Generation Identity Skills

A compact, model-agnostic skill pack for photorealistic image generation and editing where the main requirement is preserving the exact identity and real body proportions of a person from reference photos.

The pack is based on prompt patterns that repeatedly produced strong identity matches in real portrait workflows. It is designed for Codex-style `SKILL.md` installations and can also be used as a plain prompt playbook in ChatGPT, Claude, Gemini, Cursor, and other agents.

## Core principles

1. **Intent before action.** Supplying prompt examples is not a request to generate an image.
2. **Identity block first.** The identity reference outranks scene, outfit, pose, and style references.
3. **One scene reference per shot.** Do not mix several poses or compositions in one generation.
4. **No identity averaging.** The person in the scene reference is only a pose/composition mannequin.
5. **Real proportions stay real.** Do not slim, enlarge, shorten, lengthen, rejuvenate, or beautify the target person.
6. **Simple prompts beat overloaded prompts.** State the hierarchy and hard constraints clearly; avoid decorative repetition.
7. **Series need a canonical anchor.** Approve one accurate identity image before creating a large photo series.
8. **Repair only what is wrong.** When the face is wrong but the scene is good, use a face-only correction instruction and freeze everything else.

## Included skills

| Skill | Purpose |
|---|---|
| `generation-intent-guard` | Prevents accidental generation when the user is sharing examples, prompts, or references for analysis. |
| `identity-lock-prompt-engineer` | Builds concise prompts with a strict identity hierarchy. |
| `reference-scene-reconstruction` | Recreates a selected photo while replacing only the person with the target model. |
| `portrait-series-consistency` | Keeps the same identity, body, hair, age, and styling across a series of separate shots. |
| `identity-fidelity-review` | Reviews a generated result and writes a targeted correction prompt without destroying successful parts. |

## Repository layout

```text
skills/       Installable SKILL.md folders
templates/    Reusable prompt templates
references/   Proven prompt patterns supplied by the project owner
examples/     Completed example workflows
scripts/      Local installers for Codex/agent skill directories
PROJECT_MEMORY.md
```

## Install

### Linux / macOS

```bash
bash scripts/install.sh
```

### Windows PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File scripts/install.ps1
```

The installer copies each skill to:

- `${CODEX_HOME:-~/.codex}/skills/`
- `~/.agents/skills/`

No Python packages, APIs, model weights, or external services are required. These are instruction skills, not generation engines.

## Usage

Ask the agent to use a skill explicitly, for example:

```text
Use identity-lock-prompt-engineer. Build a prompt only; do not generate.
```

or:

```text
Use reference-scene-reconstruction. Image 1 is the scene reference; Images 2–6 are the target woman.
```

## Privacy

Do not commit private reference photos to a public repository. Store only generic prompts, reusable instructions, and anonymized examples.

## License

MIT.
