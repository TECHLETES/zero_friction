# SDK specification refresh implementation plan

> **For agentic workers:** Use techletes-superpowers:subagent-driven-development to implement and review this plan task by task.

**Goal:** Implement #12 by refreshing vendor specifications and reproducibly regenerating existing SDK clients.

**Architecture:** Retain OpenAPI Generator 7.13.0 and the eight existing Python package names. Store vendor specifications and provenance, provide a repeatable generation command, and retain compatibility patches in `zero_friction/patches/`.

**Tech stack:** Python 3.9+, uv, Docker, OpenAPI Generator 7.13.0.

## Global constraints

- Preserve the public package name, Python 3.9+ compatibility, and SDK client package structure.
- No tariff workflows, raw-JSON workaround, live tariff writes, or scheduled automation.
- Do not manually edit generated models; resolve generation issues at the source or generator configuration.
- Use existing dependencies and targeted runnable checks.

## Tasks

- [x] Recover generator settings from existing metadata/history and compare a baseline generation against checked-in clients.
- [x] Retrieve complete vendor specifications for all eight clients into `openapi_specs/`; reject empty/incomplete exports and record source, date, version, and content hashes.
- [x] Add `scripts/generate-sdk.sh` with the pinned generator and existing package naming. Generate into temporary directories before updating `sdk/`, preserving existing non-generated compatibility code.
- [x] Review endpoint/model differences and wrapper imports. Add a focused offline check under `tests/` that loads repository clients rather than the Git versions installed by the root package.
- [x] Document provenance, generation commands, compatibility changes, and validation limits in `docs/sdk-regeneration.md`, linked from README.
- [x] Run `uv run --frozen pytest`, `uv run pre-commit run --all-files`, and generation reproducibility comparison. Obtain independent review, resolve findings, and prepare a PR closing #12.
