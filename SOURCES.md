# Sources and skill audit

## Adopted first-party sources

### OpenAI Agent Skills catalog

- Repository: `openai/skills`
- Reviewed commit: `49f948faa9258a0c61caceaf225e179651397431`
- Components used historically: official skill structure, initializer/validation guidance, and skill packaging conventions.
- Note: the repository itself now contains a deprecation commit pointing users toward the Plugins directory, but the reviewed skill-structure concepts remain useful as repository conventions.

### OpenAI Codex image-generation sample

- Repository: `openai/codex`
- Reviewed commit: `1669c2403f793d0230065397dfc25f52b844244e`
- Adopted concepts: explicit input-image roles, identity-preserve use case, single-change editing, locked invariants, and post-generation inspection.

## Presentation/PPTX sources reviewed on 2026-08-18

### `gitbrent/PptxGenJS`

- Role: mature standards-compliant programmatic PPTX generation library.
- Adopted concepts: editable native slide objects, Slide Masters/themes for new decks, explicit image placement, repeatable programmatic authoring.
- Boundary: do not use a generator as an excuse to rebuild an existing protected PPTX master when in-place editing preserves it more faithfully.
- No third-party code copied into this repository.

### OpenAI curated Slides workflow via public mirrors carrying OpenAI source metadata

- Reviewed public source included `JetBrains/skills` mirror of the OpenAI slide skill.
- Adopted concepts: render final PPTX to per-slide PNGs, montage/contact-sheet review, overflow/out-of-bounds checks, font substitution detection, explicit crop/contain placement, and final-destination writes only after validation.
- Conditional rules: source master aspect ratio wins over default 16:9; authoring JS/assets are not delivered when the user explicitly requests one PPTX only.
- No mirrored code copied into this repository.

### `proyecto26/slides-ai-plugin`

- Reviewed concept: deterministic layout helpers for element bounds, overlap/containment/touching checks, and slide dimensions.
- Adopted conceptually as a pre-render guard for generated/dense layouts.
- Boundary: geometric checks cannot detect product-identity corruption or visual extraction defects; rendered QA remains mandatory.
- No code imported.

### `JaromirKonecny/claude-code-presentations`

- Adopted concepts: separate research/outline/visual-plan/asset/build/QA phases; structured asset staging; plan visuals for a specific slide job.
- Rejected/conditional: stock or generated images cannot substitute for exact real equipment/evidence; user manual inspection is not the primary final QA gate; from-scratch generation does not override an existing protected master.
- No code imported.

## Reviewed third-party source — not imported

### `michaelboeding/skills`

- Reviewed commit: `84abf02d42612ab0b94a54de1a1a454ae25dd131`
- License: MIT.
- Decision: do not import. It adds provider-specific dependencies and overlaps with built-in image-generation tooling.

## Project-owned sources

- Owner-provided proven prompt patterns supplied on 2026-08-04.
- Existing project templates and focused identity-generation skills created from those patterns.
- Owner-approved Felicity Solar 2026 catalog mastering workflow from 2026-08-18, recorded as a sanitized golden case without publishing the private PPTX or Drive identifiers.
- `skills/master-product-catalog/` — exact-product PPTX mastering workflow.
- `skills/presentation-visual-generation/` — evidence-safe visual generation workflow for presentation assets.
- `references/presentation-generation-github-practice-review.md` — detailed accepted/conditional/rejected practice review.

## Provenance rule

External repositories are used as research evidence and design inspiration only unless code import is explicitly justified, license-reviewed, and recorded. The strongest owner-approved practice remains authoritative when an external generic workflow would reduce fidelity or delivery quality.
