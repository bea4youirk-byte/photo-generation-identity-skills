# Project State — Photo Generation Identity

## Current stage

Private-repository bootstrap prepared; project and skills validated and packaged.

## Last updated

2026-08-04

## Completed

- Collected the owner's proven simple prompt patterns.
- Preserved the original five focused instruction skills and reusable templates.
- Created the consolidated installable skill `photo-identity-generation` using the official OpenAI skill-creator structure.
- Added `agents/openai.yaml` and project-specific references.
- Ran the official OpenAI `quick_validate.py` validator successfully on all six skills.
- Installed the skills into both `/home/oai/.codex/skills/` and `/home/oai/.agents/skills/` in the build environment and verified matching copies.
- Confirmed GitHub repository admin, read, and push permissions.
- Confirmed real GitHub writes on branch `main`.
- Added the `$bootstrap-private-project` Windows workflow: GitHub CLI browser authentication, private visibility enforcement, install, commit, push, and verification.
- Built a single project ZIP so the owner does not need to download or upload multiple files.

## Saved materials and links

- Repository: `bea4youirk-byte/photo-generation-identity-skills`
- Primary skill: `skills/photo-identity-generation/`
- Proven prompts: `references/proven-prompts.md`
- Focused skills: `skills/generation-intent-guard/`, `skills/identity-lock-prompt-engineer/`, `skills/reference-scene-reconstruction/`, `skills/portrait-series-consistency/`, `skills/identity-fidelity-review/`
- Templates: `templates/`
- Source audit: `SOURCES.md`
- Windows private bootstrap: `START_PRIVATE_PROJECT.cmd` and `scripts/bootstrap-private-project.ps1`

## Confirmed facts and sources

- The connected GitHub account has admin, read, and push access to the repository.
- The repository default branch is `main`.
- The repository accepts writes through the GitHub connector.
- Official OpenAI skill structure requires `SKILL.md`; `agents/openai.yaml` supplies interface metadata; detailed context belongs in `references/`.
- GitHub CLI supports browser authentication, repository creation, visibility changes, repository inspection, and push verification.

## Unverified claims — do not publish

- No prompt wording can guarantee mathematically exact or pixel-identical biometric identity across every generation.
- A successful prompt on one image model is not guaranteed to behave identically on another model or future model version.

## Open decisions and assumptions

- Existing five skills remain focused supporting modules; `photo-identity-generation` is the primary entry point.
- Personal reference photographs are not stored in the repository.
- The Windows bootstrap changes the current repository to private rather than creating a duplicate.

## Blockers

- The assistant cannot execute a Windows program on the owner's physical PC. The single packaged bootstrap must be launched locally; it handles all remaining GitHub actions and asks only for GitHub browser authorization when required by GitHub.

## Next concrete step

Run `START_PRIVATE_PROJECT.cmd`; the script will make the repository private, install the skills, push the verified state, and write `BOOTSTRAP_RESULT.md`.
