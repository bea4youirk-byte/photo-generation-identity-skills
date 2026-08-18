# Presentation and visual-generation GitHub practice review

Reviewed: 2026-08-18.

Purpose: adopt useful public presentation-engineering practices without weakening the owner-approved product-fidelity workflow.

## Sources reviewed

### gitbrent/PptxGenJS

Useful:

- editable standards-compliant PPTX generation;
- custom Slide Masters;
- native text/tables/shapes/images/charts;
- SVG support;
- repeatable new-deck generation.

Decision:

- recommended engine/pattern for new programmatic decks when the environment supports it;
- not a reason to rebuild a protected existing PPTX master.

### OpenAI curated slides workflow (reviewed through public GitHub mirrors carrying OpenAI source metadata)

Useful:

- render PPTX to per-slide PNGs;
- build a montage/contact sheet;
- detect slide-canvas overflow;
- detect missing/substituted fonts;
- explicit crop/contain placement;
- fix unintended overlap/out-of-bounds defects;
- keep final-destination writes until after validation;
- preserve native editable PowerPoint elements where practical.

Adopted:

- render + montage/contact-sheet QA;
- structural overflow/overlap checks where available;
- font substitution checks when text reflow is possible;
- explicit contain/crop and aspect-ratio preservation;
- task staging before final delivery.

Conditional/rejected:

- default 16:9 only for new decks without a source format; source master aspect ratio wins;
- do not force delivery of authoring JS/assets when the user requests one final PPTX;
- generator-first authoring does not override in-place editing of an approved source master.

### proyecto26/slides-ai-plugin and similar public layout helpers

Useful concept:

- programmatic comparison of element bounds;
- overlap/containment/touching classification;
- slide-dimension and alignment checks.

Decision:

- useful pre-render engineering guard;
- not a substitute for rendered visual QA because geometry checks cannot detect wrong product models, dirty cutouts, halos, duplicated hardware details, logo deformation or visual softness.

No third-party helper code was copied.

### JaromirKonecny/claude-code-presentations

Useful:

- separate research, outline/visual plan, asset creation, PPTX build and QA phases;
- create assets for an explicit slide job rather than randomly;
- structured staging folders;
- masters/templates for new decks.

Conditional/rejected:

- stock/generative imagery is not valid for exact real equipment, certifications, logos, screenshots, installation proof or customer evidence;
- user manual inspection cannot be the first/only final QA gate;
- the documented limitation that PptxGenJS cannot read existing PPTX masters reinforces in-place editing for protected existing decks.

### Local photo-generation-identity workflow

Transferable:

- reference fidelity;
- minimal local corrections;
- reference/source audit;
- QA loops;
- preserve proven successful patterns as golden references.

Boundary:

- identity/reference generation methods do not authorize generation of authentic product hardware.

## Combined rules

1. Decide whether the artifact is NEW or an EXISTING PROTECTED MASTER.
2. For a protected master, preserve it; do not rebuild simply because a generator is available.
3. Decide whether each visual is AUTHENTIC EVIDENCE, REFERENCE-LOCKED, CONCEPTUAL, or DECORATIVE.
4. Authentic product/evidence assets come from authoritative sources, not generation.
5. Generated assets are planned for their actual slide crop/negative space and role.
6. Preserve image aspect ratio with explicit contain/crop logic.
7. Use structural checks (overflow, overlap, fonts) when available.
8. Render every final slide/block and inspect a montage/contact sheet.
9. Zoom suspicious slides and repair before delivery.
10. Final delivery follows the user's requested artifact count/format; do not add source files by default.

## Conflict verdict

No material conflict with the owner-approved Felicity Solar catalog practice after context-sensitive routing.

The approved catalog workflow remains stricter for technical/equipment work and therefore controls whenever exact real product identity matters.
