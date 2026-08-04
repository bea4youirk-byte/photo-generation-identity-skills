---
name: identity-fidelity-review
description: Review a generated portrait against target-person references, identify concrete identity drift, and write a minimal correction prompt that preserves successful scene, body, clothing, and composition regions.
---

# Identity Fidelity Review

## Goal

Diagnose what changed instead of vaguely saying “the face is different.” Repair only the failing components.

## Review order

1. Identity: face shape, forehead, eyes, eyebrows, nose, lips, cheekbones, jaw, chin, age.
2. Hair: color, hairline, length, texture.
3. Body: height impression, shoulders, torso, bust, waist, hips, legs.
4. Permanent details: tattoos, moles, scars.
5. Pose and anatomy.
6. Outfit.
7. Scene, framing, light, and color.

## Report format

```text
KEEP LOCKED:
- [successful elements]

IDENTITY MISMATCHES:
- [specific mismatch]
- [specific mismatch]

CORRECT ONLY:
- [smallest required region or trait set]
```

## Face-only correction rule

When scene, pose, body, clothing, and composition are already correct, use:

```text
Edit the current generated image. Preserve the entire image exactly as it is: background, composition, camera, pose, body proportions, hair length, clothing, hands, legs, lighting, shadows, and color grading. Correct only the woman's facial identity and the immediate hairline using the uploaded identity references. Replace no other region.

The corrected face must be the same real woman from the identity references. Preserve exact facial structure, forehead proportions, eye shape and spacing, eyebrows, nose bridge and tip, lips, cheekbones, jawline, chin, skin tone, age, and natural skin texture. No beautification, no rejuvenation, no face reshaping, no generic AI beauty face, and no identity averaging.
```

## Hard rules

- Do not regenerate the entire scene when only the face is wrong.
- Do not add generic beauty descriptors during identity correction.
- Do not claim a match is exact when it is not.
- Do not launch a correction generation unless explicitly requested.
