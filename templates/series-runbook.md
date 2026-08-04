# Portrait Series Runbook

## Before generation

- [ ] User explicitly requested generation, not only prompt analysis.
- [ ] One target model is selected.
- [ ] Strong identity references selected.
- [ ] Full-body references selected.
- [ ] Canonical model card written.
- [ ] One scene reference selected for the current shot.
- [ ] Current shot is separate, not a collage.

## After generation

- [ ] Same face and age.
- [ ] Same eye color and face structure.
- [ ] Same hair color.
- [ ] Same real body proportions.
- [ ] Permanent details are consistent.
- [ ] Pose matches the current scene reference only.
- [ ] Clothing matches.
- [ ] Background and framing match.
- [ ] Hands, feet, and anatomy are valid.
- [ ] No text or watermark.

## Correction choice

- Face wrong, everything else right → face-only correction.
- Body wrong, scene right → body-only correction with face and scene locked.
- Scene wrong, identity right → scene correction with identity locked.
- Multiple major systems wrong → restart from original references, not from the failed output.
