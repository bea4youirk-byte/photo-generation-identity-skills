---
name: presentation-visual-generation
description: Create or prepare visual assets for presentations, commercial proposals, product decks, catalogs, and marketing layouts while preserving evidence integrity, brand constraints, reference fidelity, and final compositional fit. Use for generated backgrounds, conceptual illustrations, lifestyle scenes, visual metaphors, supporting graphics, or reference-based scenes that will be placed into PPTX/Slides. Route authentic product/evidence imagery to authoritative sources instead of generation.
---

# Generate presentation visuals without corrupting evidence

A presentation visual has a job inside a layout. Generate for that job, not as an isolated pretty picture.

## Classify the asset first

Before generation, classify the requested visual as one of:

1. `AUTHENTIC_EVIDENCE` — exact product, real project, customer proof, certificate, screenshot, logo, technical label, installation evidence.
2. `REFERENCE_LOCKED` — a specific real person, object, scene, composition, or brand element must remain recognizable and structurally faithful.
3. `CONCEPTUAL` — illustration, metaphor, abstract technology, generic environment, non-evidence lifestyle scene.
4. `DECORATIVE` — background, texture, atmosphere, visual filler, section divider.

Routing:

- `AUTHENTIC_EVIDENCE`: do not generate. Acquire authoritative source material.
- `REFERENCE_LOCKED`: use reference-driven editing/generation with strict fidelity and minimal change.
- `CONCEPTUAL` / `DECORATIVE`: generation is allowed when requested and safe.

If the user has not actually asked to generate now, follow the repository's generation-intent guard and do not invoke an image model.

## Define the layout job before generating

Resolve:

- target slide/page and visual purpose;
- required aspect ratio or bounding box;
- subject position and negative space for text;
- crop tolerance;
- palette/lighting/style constraints;
- whether the visual must sit behind text, beside text, or be isolated as a cutout;
- whether multiple images must form a consistent series.

Do not generate a random square image and force it into a wide layout later.

## Reference fidelity

When references are supplied:

1. Identify what is identity-critical versus freely editable.
2. Lock critical geometry, recognizable features, counts, proportions, orientation, and brand-defining details.
3. Change only what the user requested.
4. Prefer local corrections over full regeneration when most of the image already works.
5. For multi-image series, keep a stable reference set and compare each new output against the approved anchor image.

## Technical/product rule

Real product hardware is not a generative canvas.

Do not generate or generatively modify exact:

- product bodies/casings;
- ports/connectors;
- vents/screens/buttons;
- logos/model labels/spec plates;
- physical component counts;
- wiring/cabling presented as authoritative engineering evidence.

When a generated scene needs a real product, create the scene around it and insert an exact official product cutout when tooling permits.

## Evidence boundary

Never present generated content as:

- a real customer installation;
- a real completed project;
- a real product photo of an exact SKU;
- a real certification or compliance document;
- a real screenshot/dashboard result;
- a real testimonial or press mention.

Generated illustrative material may support communication, but it must not manufacture proof.

## Compose for presentation use

Prefer outputs that reduce downstream layout damage:

- intentional negative space for titles/copy;
- uncluttered focal point;
- readable silhouette at slide scale;
- no critical detail at crop edges;
- consistent horizon/perspective when used in a series;
- sufficient contrast from the intended slide background;
- transparent cutouts when isolation is required.

## Failure patterns

Reject or repair outputs with:

- duplicated limbs/components/repeated objects;
- warped architecture or hardware;
- fake/unreadable brand text presented as real;
- incoherent counts;
- impossible shadows/perspective that damage credibility;
- accidental identity drift in a reference-locked subject;
- clutter that blocks slide text hierarchy;
- composition incompatible with the target crop;
- inconsistent visual language across a series.

For exact products, any generated deformation is a hard FAIL and should route back to official imagery.

## QA loop

1. Compare output against the brief/reference.
2. Check subject identity/geometry and requested changes.
3. Check intended crop/aspect/negative space.
4. Check for duplicated or malformed details at full size.
5. Place or mock the asset in the actual slide/layout when possible.
6. Inspect at presentation viewing scale, not only as a standalone image.
7. If a local correction can solve the defect, prefer it over regenerating the entire image.
8. Stop after PASS; do not keep changing an approved visual merely for novelty.

## Relationship to product catalog mastering

When the task includes an existing product catalog or exact equipment imagery, use `master-product-catalog` as the controlling workflow. This skill supplies only the generation-safe supporting visuals.
