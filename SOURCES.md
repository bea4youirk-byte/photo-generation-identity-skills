# Sources and skill audit

## Adopted first-party sources

### OpenAI Agent Skills catalog

- Repository: `openai/skills`
- Reviewed commit: `49f948faa9258a0c61caceaf225e179651397431`
- Components used: official `skill-creator` structure, `agents/openai.yaml` guidance, initializer workflow, and `quick_validate.py` validation rules.
- Security review: Python scripts create local directories/files and validate YAML. No destructive repository operations, credentials, or network calls are required.

### OpenAI Codex image-generation sample

- Repository: `openai/codex`
- Reviewed commit: `1669c2403f793d0230065397dfc25f52b844244e`
- Adopted concepts: explicit input-image roles, identity-preserve use case, single-change editing, locked invariants, and post-generation inspection.

## Reviewed third-party source — not imported

### michaelboeding/skills

- Reviewed commit: `84abf02d42612ab0b94a54de1a1a454ae25dd131`
- License: MIT.
- Decision: do not import. It adds provider-specific dependencies and overlaps with built-in image-generation tooling.

## Project-owned sources

- Owner-provided proven prompts supplied on 2026-08-04.
- Existing project templates and five focused skills created from those patterns.
- Reusable `$bootstrap-private-project` workflow accepted by the owner on 2026-08-04: one project ZIP, autonomous Windows command, GitHub CLI browser authentication, private repository enforcement, commit/push, and verification; no Drive, Notion, Colab, or Codex handoff.
