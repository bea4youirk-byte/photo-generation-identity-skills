# Project Memory — Фото генерации

## Project objective

Create photorealistic portraits and complete photo series in which the target model remains recognizably the same real person while pose, clothing, setting, framing, and editorial style may come from a separate reference image.

## Binding decisions

- Use the owner's proven simple prompt patterns as the base.
- Identity preservation has the highest priority.
- The selected scene photo controls composition, pose, outfit, camera, light, and environment only.
- The target model photos control face, age, hair, skin, body type, height impression, and proportions.
- Never copy or average the face/body of the person in the scene reference.
- Each reference shot is reconstructed separately; never create a collage unless explicitly requested.
- Do not generate when the user is only sending successful prompts, examples, or materials for analysis and storage.
- Do not beautify, rejuvenate, reshape, slim, enlarge, or replace the target identity.
- Use one approved identity anchor for a multi-image series.
- When everything except the face is correct, preserve the whole image and issue a face-only correction instruction.
- Public repository must contain no private photographs.

## Prompt pattern proven to work

Start with a short identity lock such as:

> Use the reference face and preserve it 100% identical to the original. Do not change facial structure, proportions, jawline, nose shape, lips, eyes or bone structure. No beautification edits. No face reshaping. Identity lock mode.

Then describe the requested scene in plain language. Finish with photorealism, natural skin texture, and a compact negative block.

## Working sequence

1. Determine whether the user requests generation or only prompt analysis.
2. Label every uploaded image by role.
3. Select one scene reference.
4. Select the strongest identity references.
5. Build a concise prompt using the identity-first hierarchy.
6. Generate only after an explicit generation request.
7. Review identity, body proportions, anatomy, clothing, background, and series consistency separately.
8. Correct the smallest failing region while freezing successful regions.

## Repository target

Preferred public repository name: `photo-generation-identity-skills`.
