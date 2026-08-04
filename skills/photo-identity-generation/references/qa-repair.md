# Quality assurance and repair

## Review order

1. Facial identity: shape, age, forehead, eyes, eyebrows, nose, lips, cheekbones, jaw, chin.
2. Hair: color, hairline, length, texture.
3. Body: height impression, shoulders, torso, bust, waist, hips, legs, overall silhouette.
4. Permanent details: tattoos, moles, scars.
5. Anatomy: hands, fingers, feet, joints, posture.
6. Outfit and fabric.
7. Scene, framing, light, shadows, and color.
8. Series consistency against the canonical anchor.

## Acceptance gates

- The person is recognizably the target person, not a generic look-alike.
- Natural age is preserved.
- Eye color and hair color are not changed without instruction.
- Body proportions remain faithful to full-body references.
- The scene-reference person has not leaked into the identity.
- One shot follows one scene reference.
- No unexplained anatomy defects, text, or watermark.

## Repair decision

- Face wrong, everything else right: face-only correction.
- Body wrong, face and scene right: body-only correction with face and scene locked.
- Scene wrong, identity right: scene correction with identity locked.
- One accessory wrong: accessory-only edit.
- Multiple major systems wrong: restart from original references, not from the failed output.

## Review report format

```text
KEEP LOCKED:
- ...

IDENTITY DRIFT:
- ...

OTHER DEFECTS:
- ...

SMALLEST REPAIR:
- ...

CORRECTION PROMPT:
...
```
