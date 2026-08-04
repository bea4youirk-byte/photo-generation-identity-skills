---
name: identity-lock-prompt-engineer
description: Build concise, high-priority prompts for photorealistic portraits that preserve the exact identity and real body proportions of a person from uploaded reference photos. Use when the user wants a prompt, not automatic generation, or when another skill needs an identity-lock block.
---

# Identity Lock Prompt Engineer

## Goal

Create a prompt in which the target person's identity is the dominant constraint and all other references serve subordinate roles.

## Default behavior

Return a prompt only. Do not generate unless the user explicitly requests generation in the current message.

## Reference hierarchy

Assign roles before writing:

1. `IDENTITY REFERENCES` — face, age, skin, hair, distinguishing features.
2. `BODY REFERENCES` — height impression, shoulders, torso, bust, waist, hips, legs, body type.
3. `SCENE REFERENCE` — pose, outfit, camera, crop, environment, lighting, mood.
4. `OPTIONAL DETAIL REFERENCES` — jewelry, hairstyle, fabric, props.

The identity and body references always outrank the scene reference.

## Required opening block

Use a short lock at the very beginning:

```text
Use the uploaded identity references as the absolute source of the woman's identity. Preserve the same real woman and keep her facial identity fully recognizable. Do not change facial structure, proportions, jawline, chin, cheekbones, forehead, eye shape or spacing, eyebrows, nose shape, lips, skin tone, age, or bone structure. No beautification edits. No face reshaping. No identity averaging. Identity lock mode.
```

## Anti-averaging block

When a scene reference contains another person, state:

```text
The person in the scene reference is only a mannequin for pose, clothing, framing, and composition. Do not copy, blend, or average that person's face, body type, age, or proportions into the target woman.
```

## Body lock

```text
Preserve the target woman's real body proportions from the body references. Do not make her thinner, fuller, shorter, taller, younger, more athletic, or more exaggerated. Keep her natural shoulders, torso length, bust, waist, hips, leg proportions, and height impression.
```

## Prompt order

1. Identity lock.
2. Reference roles and anti-averaging rule.
3. Body lock.
4. Scene and pose.
5. Clothing and styling.
6. Hair and makeup only when requested.
7. Light and camera.
8. Realism and negative block.

## Writing rules

- Prefer exact, plain language over long decorative prose.
- Do not describe a generic “beautiful European woman” when an identity reference exists; it can overwrite identity.
- Do not repeat conflicting hair colors, ages, body types, or face descriptions.
- Do not add glamour, makeup, reshaping, or age reduction unless explicitly requested.
- Use “same real woman” and “identity reference outranks scene reference.”
- For full-body images, preserve the face even when small, but do not promise pixel-perfect likeness.

## Compact negative block

```text
No different face, no generic AI beauty face, no identity blending, no facial reshaping, no age change, no body reshaping, no plastic skin, no CGI look, no distorted anatomy, no extra fingers, no text, no watermark.
```
