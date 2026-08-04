# Prompt patterns

## Master identity-first pattern

```text
Use the uploaded identity references as the absolute source of the woman's identity. Preserve the same real woman and keep her facial identity fully recognizable. Do not change facial structure, proportions, jawline, chin, cheekbones, forehead, eye shape or spacing, eyebrows, nose shape, lips, skin tone, natural age, or bone structure. No beautification edits. No face reshaping. No identity averaging. Identity lock mode.

REFERENCE ROLES
- Images [..] are identity references and control the exact face, age, skin, hair, and permanent distinguishing features.
- Images [..] are body references and control real height impression, shoulders, torso, bust, waist, hips, legs, and body type.
- Image [..] is the scene reference and controls only pose, outfit, composition, framing, camera angle, background, light, and mood.

The person in the scene reference is only a mannequin for pose, clothing, framing, and composition. Do not copy, blend, or average that person's face, body, age, or proportions into the target woman. Identity and body references have the highest priority.

TASK
[Describe one image only.]

LIGHT AND CAMERA
[Only relevant photographic details.]

QUALITY
Photorealistic only. Natural realistic skin texture, realistic fabric, anatomy, hands, and hair. No plastic smoothing or CGI look.

NEGATIVE
No different face, no generic AI beauty face, no identity blending, no facial reshaping, no age change, no body reshaping, no distorted anatomy, no extra fingers, no text, no watermark.
```

## Scene reconstruction

```text
Image 1 is the scene reference and controls only composition, subject scale, pose, outfit, camera angle, crop, background, lighting, shadows, and color mood.
Images 2–N are the target person's identity and body references and have higher priority than Image 1.

Create one photorealistic photograph matching Image 1 closely. Replace only the original model with the same real target person from Images 2–N. Preserve the target person's natural age and real body proportions.
```

## Face-only correction

```text
Edit the current generated image. Keep the complete image locked: background, composition, horizon, camera angle, crop, pose, body proportions, hands, legs, outfit, fabric, hair length, lighting, shadows, and color grading.

Correct only the facial identity and immediate hairline using the identity references. Preserve exact face structure, eye shape and spacing, eyebrows, nose, lips, cheekbones, jawline, chin, skin tone, natural age, and skin texture. No beautification, face reshaping, rejuvenation, or generic AI face.
```

## Prompt discipline

- Use plain scene language after the identity block.
- Do not repeat the same constraint in five decorative variants.
- Do not mix multiple poses or scene references.
- Keep negative prompts compact and targeted.
- For an edit, state locked regions before the requested change.
