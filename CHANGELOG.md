# Changelog

## 0.3.0 — 2026-08-04

- Integrated the reusable `$bootstrap-private-project` workflow.
- Added a one-click Windows bootstrap using GitHub CLI browser authentication.
- Added automatic private-visibility enforcement, skill installation, commit/push, and end-state verification.
- Added `BOOTSTRAP_RESULT.md` generation and stricter privacy checks.
- Rebuilt the single ZIP delivery to avoid manual multi-file transfers.

## 0.2.0 — 2026-08-04

- Added consolidated primary skill `photo-identity-generation`.
- Added `agents/openai.yaml` and project-specific references.
- Added persistent project state, source/dependency audit, and security policy.
- Validated all six skills with the official OpenAI quick validator.
- Installed the skills into both Codex and Agent Skills catalogs and verified matching checksums.
- Confirmed real GitHub read/write access and committed the new skill to `main`.

## 0.1.0 — 2026-08-04

- Added generation intent guard.
- Added identity-lock prompt engineering skill.
- Added single-scene reconstruction skill.
- Added portrait-series consistency skill.
- Added identity fidelity review and face-only correction workflow.
- Preserved proven project prompt patterns.
- Added a pink salt-lake master prompt example.
- Added Linux/macOS and Windows installers.
