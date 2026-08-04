# Source and dependency policy

## Official facts

Verify current tool behavior, model support, installation paths, API parameters, and product limitations against official documentation or first-party repositories.

## Third-party skill audit

Before importing a third-party skill, record:

1. repository and exact commit or release;
2. purpose and files selected;
3. recent maintenance signal;
4. license and redistribution conditions;
5. scripts, package dependencies, network calls, and required secrets;
6. destructive or high-risk actions;
7. overlap with installed skills;
8. conflicts with this project's identity-first hierarchy;
9. final decision: import, adapt with attribution, or reject.

Do not install entire skill libraries. Import only a necessary module after review.

## Unverified claims

Keep claims that cannot be confirmed under `Unverified claims — do not publish` in `PROJECT_STATE.md`.
