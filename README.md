# Visual Generation + Identity + Presentation Production Skills

Reusable agent workflows for high-fidelity visual generation/editing and presentation production where references, real identities, real products, evidence, and approved source layouts must not drift.

The repository began with photorealistic identity-consistent generation. It now also contains separate workflows for presentation visual generation and exact product-catalog mastering.

## Skill families

### Photo identity and reference fidelity

- `photo-identity-generation` — consolidated workflow for a recognizable real person across reference-based scenes and multi-shot series.
- `generation-intent-guard` — prevents accidental generation when prompts/references are being analyzed or stored.
- `identity-lock-prompt-engineer` — builds reference-locked prompts.
- `identity-fidelity-review` — reviews identity drift and reference fidelity.
- `portrait-series-consistency` — keeps a series visually/identically consistent.
- `reference-scene-reconstruction` — recreates a reference scene while controlling what may change.

### Presentation and product production

- `presentation-visual-generation` — generates presentation-safe conceptual/decorative visuals while protecting evidence boundaries and exact-product authenticity.
- `master-product-catalog` — repairs/finalizes existing PPTX product catalogs using exact official manufacturer imagery, non-generative hardware cleanup, proportional placement, whole-block render/contact-sheet QA, and verified final delivery.

## Golden case

`examples/golden-cases/felicity-solar-2026-catalog.md` records the owner-approved process that produced the strongest technical-catalog result in the project to date. The private/source PPTX is deliberately not stored in this public repository.

## Core principles

- Classify intent before invoking generation.
- Reference fidelity beats uncontrolled creativity when a real identity/object must stay exact.
- Authentic evidence is sourced, not generated.
- Exact real product hardware is not generatively reconstructed.
- Prefer minimal local corrections over unnecessary full regeneration.
- For an existing approved PPTX, protect the master instead of casually rebuilding it.
- Preserve aspect ratio; use explicit contain/crop logic rather than stretching.
- Structural checks help, but final rendered visual QA is mandatory.
- Render the whole slide block/deck and inspect a montage/contact sheet before delivery.
- Preserve proven successful workflows as golden cases.

## GitHub practice review

`references/presentation-generation-github-practice-review.md` records the 2026-08-18 review of public presentation-generation practices (including PptxGenJS-based authoring, slide rendering/montage validation, overlap/out-of-bounds checks, font substitution checks, and structured asset staging) and documents which ideas are adopted, conditional, or rejected.

## Repository layout

```text
skills/                           Installable skills
references/                       Proven prompts, source/practice reviews, supporting guidance
templates/                        Reusable prompt/workflow templates
examples/                         Worked examples and sanitized golden cases
PROJECT_STATE.md                  Current project state
PROJECT_MEMORY.md                 Durable repository/project decisions
SOURCES.md                        Source and dependency audit
SECURITY.md                       Privacy and secret-handling rules
scripts/                          Installers and bootstrap utilities
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

The existing installers copy skills into supported agent skill locations.

## Privacy

Do not store personal reference photographs, private client decks, private Drive identifiers, secrets, or proprietary source assets in this public repository. Golden cases should describe the workflow and acceptance criteria without publishing private artifacts.
