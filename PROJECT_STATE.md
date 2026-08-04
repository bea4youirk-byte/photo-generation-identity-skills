# Project State — Photo Generation Identity

## Current stage

Skill hardening, repository integration, and privacy correction.

## Last updated

2026-08-04

## Completed

- Collected the owner's proven simple prompt patterns.
- Preserved the original five focused instruction skills and reusable templates.
- Created the consolidated installable skill `photo-identity-generation` using the official OpenAI skill-creator structure.
- Added `agents/openai.yaml` and project-specific references.
- Ran the official skill validator successfully on all six skills.
- Installed the skills into both `/home/oai/.codex/skills/` and `/home/oai/.agents/skills/` and verified matching checksums.
- Confirmed GitHub repository admin and push permissions.
- Confirmed real GitHub writes by creating the primary skill files on branch `main`.

## Saved materials and links

- Repository: `bea4youirk-byte/photo-generation-identity-skills`
- Primary skill: `skills/photo-identity-generation/`
- Proven prompts: `references/proven-prompts.md`
- Legacy focused skills: `skills/generation-intent-guard/`, `skills/identity-lock-prompt-engineer/`, `skills/reference-scene-reconstruction/`, `skills/portrait-series-consistency/`, `skills/identity-fidelity-review/`
- Templates: `templates/`
- Source audit: `SOURCES.md`

## Confirmed facts and sources

- The connected GitHub account has admin, read, and push access to the repository.
- The repository default branch is `main`.
- The repository exists and accepts writes through the GitHub connector.
- Official OpenAI skill structure requires `SKILL.md` and recommends `agents/openai.yaml`; detailed material belongs in `references/`.

## Unverified claims — do not publish

- No prompt wording can guarantee mathematically exact or pixel-identical biometric identity across every generation.
- A successful prompt on one image model is not guaranteed to behave identically on another model or future model version.

## Open decisions and assumptions

- Existing five skills remain as focused legacy modules; `photo-identity-generation` is the primary entry point.
- Personal reference photographs are not stored in the repository.

## Blockers

- Repository visibility is currently public but the new project requirement is private. The active GitHub connector exposes file and branch operations but not repository-visibility changes.

## Next concrete step

Change repository visibility to private, verify private read/write access, then begin the next live photo-generation task using `$photo-identity-generation`.
