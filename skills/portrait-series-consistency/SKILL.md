---
name: portrait-series-consistency
description: Plan and maintain a multi-image portrait or fashion series with one stable person across separate shots. Use when the user wants many photos with different poses, outfits, or compositions but the same exact model.
---

# Portrait Series Consistency

## Main rule

Do not create the whole series from loose identity references independently. Establish and approve a canonical identity anchor first, then ground every shot on that same anchor plus one scene reference.

## Workflow

1. Select the strongest face references: front, left three-quarter, right three-quarter, profile, natural expression.
2. Select clear full-body references for real proportions.
3. Write a canonical model card.
4. Produce or choose one approved anchor image with the correct identity.
5. For each shot, use:
   - canonical identity anchor;
   - original identity/body references;
   - exactly one scene reference;
   - one shot-specific prompt.
6. Review every result against the same model card.

## Canonical model card

Record only stable facts:

- exact identity reference set;
- age range as shown, without rejuvenation;
- natural face structure;
- eye color and shape;
- hair color, length, and texture;
- skin tone and visible texture;
- body type and height impression;
- permanent distinguishing features such as tattoos or moles;
- prohibited changes.

Do not invent measurements or visual traits not supported by references.

## Series locks

Keep stable unless the user changes them deliberately:

- face and bone structure;
- age;
- eye color;
- hair color and baseline length;
- skin tone;
- body proportions;
- tattoos, moles, and permanent details.

Shot-specific variables may change:

- pose;
- outfit;
- expression;
- hairstyle arrangement;
- background;
- framing and lens feel;
- light and color grade.

## Drift prevention

- Never use the previous failed output as the only identity reference.
- Never let a new scene model become an identity source.
- Do not blend several poses into one prompt.
- Do not change identity descriptors between shots.
- If a shot drifts, repair it from the canonical anchor, not from another drifting shot.

## Deliverable

Create one prompt per shot, clearly numbered, with the same identity block and only shot-specific scene details changed.
