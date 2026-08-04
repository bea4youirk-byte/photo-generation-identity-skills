# Project context: Фото генерации

## Objective

Create photorealistic portraits and complete fashion/photo series where the target model remains recognizably the same real person while pose, clothing, setting, framing, and editorial style may come from a separate reference image.

## Binding decisions

- Use the project owner's proven simple prompts as the base.
- Identity fidelity has the highest priority.
- Scene images control composition, pose, outfit, camera, light, and environment only.
- Target-person references control face, age, hair, skin, body type, height impression, and proportions.
- Never average the target identity with the person shown in a scene reference.
- Reconstruct each shot separately unless a collage is explicitly requested.
- Do not generate when the user is supplying prompts or examples for analysis, storage, or skill building.
- Do not beautify, rejuvenate, slim, enlarge, shorten, lengthen, or reshape the target person.
- Use one approved identity anchor for a multi-image series.
- When only the face is wrong, keep the rest of the image locked and correct the face only.
- Do not commit private model photographs without explicit approval and private-repository protection.

## Proven language pattern

The following compact opening repeatedly produced strong results:

> Use the reference face and preserve it 100% identical to the original. Do not change facial structure, proportions, jawline, nose shape, lips, eyes or bone structure. No beautification edits. No face reshaping. Identity lock mode.

Treat this as a high-priority instruction, not as a technical guarantee of exact biometric replication.
