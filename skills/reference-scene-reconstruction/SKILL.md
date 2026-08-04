---
name: reference-scene-reconstruction
description: Reconstruct one selected photograph as a separate photorealistic shot while replacing the original person with a target model. Preserve the scene, pose, outfit, camera, light, and composition, but lock face and body to the target model references.
---

# Reference Scene Reconstruction

## Scope

Use for “make the same photo with my model,” fashion-reference recreation, travel-photo recreation, and scene replacement where a target person must appear in an existing visual setup.

## Input discipline

- Use exactly one scene reference for one output image.
- Multiple identity photos may be used to establish the target person.
- Do not mix several scene references, poses, dresses, or camera angles in one generation.
- Process a photo series one shot at a time.

## Role declaration

Begin the prompt with explicit image roles:

```text
Image 1 is the scene reference and controls only the location, composition, pose, outfit, camera angle, crop, lighting, and mood.
Images 2–N are identity/body references and control the exact woman, her face, age, hair, skin, body type, height impression, and proportions.
The identity/body references have higher priority than Image 1.
```

## Reconstruction lock

Preserve from the scene reference:

- horizon and perspective;
- subject scale and placement;
- pose and limb arrangement;
- clothing design and fabric behavior;
- camera height, focal feel, crop, and aspect ratio;
- light direction, hardness, shadows, and color grade;
- background objects and leading lines.

Replace only the person. Do not copy the scene model's face or body.

## Editing versus regeneration

When the user requires the original background to remain nearly unchanged, treat the task as an edit of the selected scene image, not a free recreation. Freeze all successful background regions.

## Prompt skeleton

```text
[IDENTITY LOCK]

REFERENCE ROLES
Image 1 = scene reference only.
Images 2–N = target woman's identity and body references.
The target woman must remain the same real person. Do not copy or blend the scene model's identity or body.

TASK
Recreate Image 1 as one photorealistic photograph. Preserve the same composition, pose, outfit, framing, camera angle, light, background, and subject scale. Replace only the original person with the target woman from Images 2–N.

[BODY LOCK]

[SCENE DETAILS]

[REALISM + NEGATIVE BLOCK]
```

## Acceptance criteria

- Same target identity, not merely a similar woman.
- Real target body proportions.
- One separate image, not a collage.
- Scene and pose remain recognizable.
- No identity blending with the original scene model.
