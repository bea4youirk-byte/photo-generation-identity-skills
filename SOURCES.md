# Sources and skill audit

## Adopted first-party sources

### OpenAI Agent Skills catalog

- Repository: `openai/skills`
- Reviewed commit: `49f948faa9258a0c61caceaf225e179651397431`
- Components used: official `skill-creator` structure, `agents/openai.yaml` guidance, initializer workflow, and `quick_validate.py` validation rules.
- License: individual skill licensing is stored inside each skill directory; only workflow/structure and validator behavior were used.
- Security review: Python scripts create local directories/files and validate YAML. No destructive repository operations, credentials, or network calls are required.

### OpenAI Codex image-generation sample

- Repository: `openai/codex`
- Reviewed commit: `1669c2403f793d0230065397dfc25f52b844244e`
- Component reviewed: `codex-rs/skills/src/assets/samples/imagegen/SKILL.md`
- Adopted concepts: explicit input-image roles, identity-preserve use case, single-change editing, locked invariants, and post-generation inspection.
- Not copied wholesale: the general imagegen skill is broader than this project and includes API/CLI paths not required here.

## Reviewed third-party source — not imported

### michaelboeding/skills

- Reviewed commit: `84abf02d42612ab0b94a54de1a1a454ae25dd131`
- License: MIT.
- Relevant module: general image-generation skill.
- Dependencies: repository-wide installation can add `google-genai`, Pillow, rembg, matplotlib, NumPy, and other packages; image generation may require Google or OpenAI API keys.
- Risks/conflicts: broad provider-specific generation workflow, unnecessary packages and secrets, and overlap with the built-in image-generation tool and OpenAI first-party guidance.
- Decision: do not import. The project needs identity-specific orchestration, not another generation engine.

## Project-owned sources

- Owner-provided proven prompts supplied on 2026-08-04.
- Existing project templates and five focused skills created from those patterns.
