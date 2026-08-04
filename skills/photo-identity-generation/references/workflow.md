# End-to-end workflow

## 1. Resume state

Read `PROJECT_STATE.md`. Reuse approved prompts, model cards, canonical anchors, and completed shots. Do not restart unless a quality gate failed.

## 2. Classify intent

Separate generation from prompt analysis or storage. Pasted examples are evidence, not commands.

## 3. Build an input map

Create a compact map:

```text
EDIT TARGET: Image A
IDENTITY: Images B, C, D
BODY: Images E, F
SCENE: Image G
DETAIL: Image H — earrings only
```

## 4. Create a model card

Record observable invariants:

- face shape and natural age;
- eye color and shape;
- eyebrows, nose, lips, jaw, chin;
- skin tone and texture;
- hair color, length, hairline, texture;
- real body proportions;
- tattoos, moles, scars, or other permanent details.

Do not add flattering assumptions.

## 5. Select mode

- Prompt only: produce the prompt and stop.
- New image: one scene reference, one output.
- Edit: lock the whole edit target and change the smallest requested region.
- Series: establish one canonical anchor first.
- Repair: diagnose and correct the smallest failing scope.

## 6. Build the prompt

Use the pattern in `prompt-patterns.md`. Keep instructions ordered by priority.

## 7. Execute only when explicit

Call the image tool only for a current explicit generation or editing request. Use all reference inputs with role labels.

## 8. Review

Apply the gates in `qa-repair.md`. Record concrete deviations, not vague judgments.

## 9. Persist

Save the selected prompt, review, output reference, decisions, and next step. Update `PROJECT_STATE.md` and repository history.
