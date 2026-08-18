# Golden case — Felicity Solar 2026 product catalog mastering

Status: owner-approved, 2026-08-18.

This case records the workflow and acceptance criteria of an unusually successful technical-catalog cleanup. The private/source PPTX itself is intentionally not stored in this public repository.

## Scope

- Existing designed PPTX master.
- Product-heavy block: slides 06–50.
- Main defect class: low-quality/dirty embedded equipment imagery and extraction artifacts.
- Required outcome: preserve the catalog design while making every real equipment image clean, sharp and model-faithful.

## What produced the successful result

1. One exact current master was resolved and protected.
2. Product pages/models were inventoried before replacement.
3. Exact official Felicity Solar manufacturer imagery was preferred over dirty embedded/reseller assets.
4. Cleanup was non-generative: background/document residue was removed without redrawing hardware.
5. Product aspect ratios and casing geometry were preserved.
6. Replacements were made inside the existing layout rather than redesigning the catalog.
7. The whole target block was rendered after replacement.
8. A contact-sheet/montage was used to scan the block as a visual system.
9. Suspicious product pages were inspected individually at larger scale.
10. The file was re-rendered after corrections.
11. Only one final PPTX was uploaded after PASS.
12. Destination metadata/file integrity was verified after upload.

## Hard failures learned from previous attempts

- visually similar but wrong equipment model;
- regenerated product body instead of exact manufacturer hardware;
- stretched/squashed casing;
- malformed logo/model label;
- duplicated feet/ports/edges ("centipede" artifacts);
- ghost outlines/double images;
- dirty white/grey page strips around product cutouts;
- product cropped by a cleanup operation;
- invented ports, vents, screens, handles or connectors;
- validating only the edited asset rather than the rendered PPTX block.

## Golden acceptance rule

A future technical catalog is not considered better merely because its images are more dramatic, glossy, or generated.

It must be at least as strong as this case on:

- exact model fidelity;
- clean extraction;
- preserved product geometry;
- preserved approved layout;
- whole-block rendering QA;
- self-check before user review;
- one verified final deliverable when requested.

## Reuse

Use this case as a process benchmark through the `master-product-catalog` skill. Do not reuse or publish private project/source files merely because the workflow is public.
