---
name: master-product-catalog
description: Repair, clean, upgrade, or finalize an existing PPTX product catalog, equipment brochure, technical catalog, price catalog, or product-heavy commercial deck while preserving the exact real product identity, source master, verified facts, geometry, proportions, and editable layout. Use when product images must be replaced with exact official manufacturer assets, backgrounds cleaned, layouts preserved, and the final PPTX visually validated before delivery.
---

# Master a product catalog without changing the real product

Treat the existing presentation as a protected master and manufacturer-controlled product imagery as the source of truth.

The goal is not to redesign the equipment. The goal is to make the catalog look clean, sharp, exact, and professionally sourced while leaving the real product unchanged.

## Resolve the master first

1. Identify the exact current master file and version before editing.
2. Work only from that master unless the user explicitly authorizes a branch or redesign.
3. Preserve slide order, page size, text, tables, verified numbers, approved composition, masters/layouts, and unrelated approved content.
4. Do not silently switch to an older deck because its images are easier to extract.
5. Keep intermediate work local or in task staging. Do not upload intermediate revisions to the user's final destination.
6. If the user requests one PPTX, deliver one PPTX; keep diagnostics and authoring sources internal unless requested.

## Inventory target slides and exact models

Before replacing images:

1. Enumerate the requested slide range.
2. Identify every slide that actually contains a product image requiring work.
3. Read the exact model/SKU from slide text, tables, datasheets, or authoritative project evidence.
4. Build a model-to-slide map.
5. Never substitute a visually similar product when the exact model is unresolved.

If a reliable exact-model visual cannot be found, mark the slide as an exception and continue the rest of the block.

## Source precedence

Use the cleanest trustworthy exact-model asset in this order:

1. Current official manufacturer catalog or brochure.
2. Official manufacturer product page.
3. Official datasheet or manual.
4. Other manufacturer-controlled media.
5. Existing embedded image only when no cleaner official exact-model source exists.

Reseller images are not primary evidence when manufacturer-controlled imagery exists.

## Product fidelity lock

Inspect the official source before editing. Protect all model-defining details:

- overall casing geometry and aspect ratio;
- front panel and display placement;
- vents, seams, handles, feet, rails, brackets, ports and connectors;
- logos, model marks and labels;
- counts and spacing of repeated physical elements;
- perspective and orientation when they are model-specific.

Allowed cleanup:

- remove background;
- remove page furniture and unrelated document residue;
- trim empty whitespace;
- remove external dirt/noise/halos introduced by source extraction;
- convert to transparent PNG or another lossless usable format when needed.

Forbidden changes:

- generatively rebuilding missing product edges or details;
- changing casing shape, depth, perspective, port count, vent pattern, display, handles, feet or connectors;
- independent width/height scaling;
- stretching, squeezing, warping, or perspective correction that changes real geometry;
- redrawing or inventing logos/model labels;
- combining parts from different models;
- using a generative product look-alike as authentic manufacturer imagery.

For real equipment, fidelity beats creativity.

## Place images without distortion

1. Preserve source aspect ratio.
2. Prefer explicit contain-style placement when the full product must remain visible.
3. Use crop only when explicitly required by the approved design and only if no model-defining hardware is cut off.
4. Maintain sufficient clean margin around the product.
5. Keep the product in the intended visual slot rather than rebuilding the page unnecessarily.
6. Do not enlarge beyond useful source detail if it creates obvious softness or artifacts.

## Generation routing

Generative image tools may be used for non-evidence presentation assets such as abstract backgrounds, conceptual illustrations, generic lifestyle atmosphere, decorative scenes, or non-authentic explanatory visuals when the user allows them.

Do not use generation to create or modify authentic product hardware, customer evidence, certifications, logos, screenshots, installation proof, or exact model imagery.

If a generated scene includes real equipment, prefer compositing an exact official cutout into the scene instead of regenerating the product body.

## Zero-tolerance failures

A product slide fails when any of the following appears:

- wrong model or visually similar substitute;
- stretched or squashed product;
- malformed casing geometry;
- distorted logo or model mark;
- duplicated feet, ports, connectors, edges or repeated body parts ("centipede" artifacts);
- ghost image or double outline;
- jagged halo, dirty fringe, source-page strip or compression band;
- accidental crop of the product;
- invented vent, screen, handle, button, bracket, cable, port or seam;
- generative reconstruction presented as the real product;
- obvious resolution failure introduced by the replacement.

## Structural checks

When the editing engine exposes object geometry, run deterministic checks for:

- out-of-bounds elements;
- unintended overlaps;
- image boxes that no longer fit the approved slot;
- changed slide size/aspect ratio;
- text overflow in dense slides;
- missing or substituted fonts when typography may have shifted.

These checks supplement visual QA; they do not replace rendering.

## Whole-block visual QA is mandatory

After all replacements:

1. Render every slide in the requested block from the final PPTX.
2. Build a contact sheet or montage of the full block.
3. Scan for visual rhythm, product scale, alignment, margins, repeated-model consistency, layout drift and obvious outliers.
4. Open suspicious slides individually at larger scale.
5. Compare protected/non-target slides against the source master.
6. Confirm products are complete, proportionally correct and visually clean.
7. Confirm there are no halos, stripes, duplicates, ghosts, page residue or malformed outlines.
8. After any fix, re-render the affected block and re-check the montage.
9. Do not delegate the first real visual QA pass to the user.

PASS requires both CONTENT and VISUAL acceptance.

## Final delivery

1. Save one final PPTX unless the user explicitly requests additional formats.
2. Verify the local file opens and renders.
3. Upload only after PASS.
4. Verify destination metadata after upload: file name, file ID/path, MIME type, modified time and size.
5. Re-fetch/re-download the uploaded file when feasible and confirm it matches the approved local final.
6. Report completion only after destination write is confirmed.

## Golden-case rule

Owner-approved results may be recorded as golden cases. A golden case is a process and QA reference, not permission to publish private source files or client content.

For future work, compare against the latest relevant golden case and do not regress its fidelity, cleanliness, verification discipline, or delivery standard.

## Preferred execution order

`resolve master → load project context → inventory slides/models → acquire official sources → exact asset extraction → non-generative cleanup → proportional replacement → structural checks → full-block render → contact-sheet QA → targeted fixes → re-render → one final upload → destination verification`
