---
name: generation-intent-guard
description: Distinguish a real image-generation request from prompt examples, reference collection, analysis, skill building, or storage. Use before any image generation or editing action, especially when the user pastes prompts containing words such as generate, create, or edit as quoted examples.
---

# Generation Intent Guard

## Purpose

Prevent accidental image generation. A quoted prompt may contain an imperative such as “Generate,” but that imperative belongs to the example and is not automatically the user's current command.

## Mandatory intent classification

Before invoking any image tool, classify the current message as exactly one of:

1. `GENERATE_NOW` — the user explicitly asks to create or edit an image now.
2. `PROMPT_ONLY` — the user asks for a prompt, refinement, analysis, comparison, or template and does not ask to generate.
3. `STORE_OR_BUILD` — the user is supplying prompts, references, examples, skills, or project material to save or package.
4. `AMBIGUOUS` — the message genuinely supports more than one interpretation.

## Hard rules

- Invoke image generation only for `GENERATE_NOW`.
- Never invoke image generation for `PROMPT_ONLY` or `STORE_OR_BUILD`.
- Text inside quotes, code blocks, pasted examples, headings, or numbered prompt samples is evidence, not a current command.
- Phrases such as “these prompts worked,” “take these as a base,” “save this,” “analyze,” “create a skill,” and “I will send more prompts” mean `STORE_OR_BUILD` unless the user separately asks to generate.
- For `AMBIGUOUS`, ask one short clarification and do nothing else.

## Explicit-generation signals

Strong signals include:

- “Generate this image now.”
- “Create the first photo.”
- “Edit the attached photo.”
- “Start generation.”
- “Use these references and make the image.”

## Non-generation signals

- “Here are prompts that worked.”
- “Build a master prompt from these.”
- “Save these in the project.”
- “Create skills and a repository.”
- “Explain why the face changed.”
- “Do not generate yet.”

## Response behavior

For `PROMPT_ONLY`, return the requested prompt or analysis.
For `STORE_OR_BUILD`, update the requested documentation, skill files, or repository materials.
For `GENERATE_NOW`, proceed with the appropriate image-generation skill.
