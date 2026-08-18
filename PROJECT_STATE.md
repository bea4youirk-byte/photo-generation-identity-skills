# Project State — Visual Generation + Presentation Production

## Current stage

Repository expanded from identity-consistent photo generation into a broader visual-production skill library while preserving the existing identity workflows as a separate skill family.

## Last updated

2026-08-18

## Completed

### Identity/reference generation

- Preserved the existing focused skills and reusable templates.
- Preserved the consolidated `photo-identity-generation` workflow.
- Preserved `generation-intent-guard` so quoted prompts/references do not accidentally trigger generation.
- Kept personal reference photographs out of the public repository.

### Presentation/product production

- Added `skills/presentation-visual-generation/` for presentation-safe visual generation with evidence boundaries and layout-aware composition.
- Added `skills/master-product-catalog/` for exact-product PPTX catalog cleanup/mastering.
- Added the sanitized golden case `examples/golden-cases/felicity-solar-2026-catalog.md` based on the owner-approved final catalog workflow.
- Added `references/presentation-generation-github-practice-review.md` comparing public GitHub presentation practices with the approved workflow.
- Updated README to define the repository as a multi-family visual production library.
- Updated `SOURCES.md` with PPTX/presentation research provenance and adopted/conditional/rejected practices.

### GitHub/public-practice review

Reviewed:

- `gitbrent/PptxGenJS`;
- OpenAI curated Slides workflow through public source mirrors carrying OpenAI metadata;
- `proyecto26/slides-ai-plugin` layout-check concepts;
- `JaromirKonecny/claude-code-presentations`;
- local `commercial-presentation-ai-skills` and identity-generation workflows.

Accepted additions:

- explicit contain/crop placement and aspect-ratio protection;
- whole-deck/block render and montage/contact-sheet QA;
- overlap/out-of-bounds checks when available;
- missing/substituted-font checks when relevant;
- structured staging before final delivery;
- native editable PPTX elements and masters/themes for new decks.

Rejected/conditional when they conflict with proven practice:

- do not force 16:9 on an existing source master;
- do not rebuild an approved existing PPTX solely because a generator is available;
- do not substitute stock/generated imagery for exact products/evidence;
- do not delegate the first real QA pass to the user;
- do not deliver extra authoring files when the user requests one final PPTX.

## Golden technical-catalog baseline

The owner-approved Felicity Solar 2026 catalog block (slides 06–50) is the process benchmark for future exact-product catalog work.

Golden criteria:

- one protected current master;
- exact official manufacturer imagery;
- non-generative equipment cleanup;
- no hardware geometry distortion;
- proportional placement;
- whole-block rendered QA + contact sheet;
- targeted fixes and re-render;
- one final deliverable after PASS;
- destination/file verification after upload.

The private PPTX/Drive identifiers are not stored in this public repository.

## Repository

- Repository: `bea4youirk-byte/photo-generation-identity-skills`
- Current visibility observed through the connector: public.
- Default branch: `main`.
- GitHub connector write access: confirmed on 2026-08-18.

## Canonical related repository

`bea4youirk-byte/commercial-presentation-ai-skills` remains a strong dedicated presentation-skill library. It is visible to the connector but is not currently included in the GitHub App installation's writable repository set, so this session could not write the new catalog/generation skills there. Once write access is granted, presentation-specific skills may be mirrored or referenced there without duplicating private project artifacts.

## Privacy and evidence rules

- Do not store personal reference photographs in the public repository.
- Do not store private client decks, private Drive IDs, secrets, or proprietary source assets.
- Golden cases describe the workflow/acceptance criteria without publishing private artifacts.
- Authentic products, certifications, customer proof, screenshots and installation evidence are sourced, not generated.

## Next concrete improvements

- Add installer/manifest coverage for the two new skills if the repository's installation scripts require explicit enumeration.
- When `commercial-presentation-ai-skills` becomes writable through the GitHub App, add cross-references or mirror the presentation-specific skills there and keep this repository as the broader visual-generation source of proven workflows.
