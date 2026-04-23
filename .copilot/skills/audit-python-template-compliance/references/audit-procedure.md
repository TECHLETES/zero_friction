# Audit Procedure

Follow this sequence to audit a target repository against the TECHLETES Python
template, remediate gaps, and verify the result.

## Outcome

Complete all of these when feasible:

1. Capture the repo's current state against the template baseline.
2. Build a concrete remediation plan for every non-compliant item.
3. Implement fixes with minimal, root-cause edits.
4. Re-audit after changes.
5. Run the available validations and service startups.
6. Produce a final audit report.

## Step 1. Confirm Scope and Exceptions

Before editing:

1. Identify the target repository and working branch.
2. Confirm whether the repo is expected to align fully or partially with the
   template.
3. Record approved deviations up front.
4. If the repo is not primarily Python or does not use `uv` as its intended
   package workflow, stop and ask whether this template is the correct baseline.

## Step 2. Collect Evidence

Read the controlling surfaces first, in parallel where possible.

Primary evidence set:

- `pyproject.toml`
- `uv.lock`
- `.pre-commit-config.yaml`
- `.github/workflows/`
- `.github/dependabot.yml`
- `.github/pull_request_template.md`
- `.github/ISSUE_TEMPLATE/`
- `.github/copilot-instructions.md`
- `.devcontainer/`
- `.vscode/`
- `README.md`
- `CONTRIBUTING.md`
- `docs/`
- `.envrc`
- `.detect-secrets.yaml`
- `.gitignore`
- `.gitattributes`
- secret helper modules
- package `__init__.py` files for runtime typing setup
- tests and smoke checks
- helper scripts such as setup, new-branch, hook wrappers under
   `scripts/hooks/`, and audit wrappers
- Copilot assets under `.copilot/` when present

Use `template-config-settings.md` and its linked literal asset files to compare
concrete values for tool settings such as pytest `addopts`, mypy strictness
flags, Ruff rule sets, Bandit skips, pre-commit hook revisions, delegated hook
scripts, and devcontainer editor settings.

If a baseline file is missing, treat that as a finding rather than continuing as
though the capability exists.

## Step 3. Build the Audit Matrix

Create a finding entry for each baseline area:

- Dependency management and packaging
- Typing and runtime type enforcement
- Pre-commit hooks and security gates
- Secret handling
- CI validation
- Devcontainer support
- Repo scripts and developer workflow
- Documentation completeness and accuracy

For each finding, record:

- Expected baseline
- Expected concrete setting values when relevant
- Actual state
- Severity: blocking, major, minor, or informational
- Whether it is auto-fixable
- The smallest validating command or check
- Whether the gap is a real defect or an approved deviation

## Step 4. Create the Alignment Plan

Plan fixes in dependency order.

Recommended order:

1. Core project model
   `pyproject.toml`, package layout, `uv.lock`
2. Quality and security gates
   `.pre-commit-config.yaml`, pip-audit, Bandit, detect-secrets
3. Automation and environment setup
   `scripts/`, `scripts/hooks/`, `.github/workflows/`, `.devcontainer/`,
   `.envrc`
4. Code and tests
   runtime typing hooks, helper modules, missing tests
5. Documentation
   `README.md`, `CONTRIBUTING.md`, `docs/`

Parallelize only independent slices. Examples:

- Docs can often be updated in parallel with test additions after the final
  executable behavior is known.
- CI and devcontainer copy edits may be parallel only if neither depends on the
  same config changes still in flight.

Do not parallelize changes that share a controlling file or a single validation
surface such as `pyproject.toml` plus `uv.lock`.

## Step 5. Execute the Plan

Implement the smallest set of changes that makes the target repo comply with the
baseline.

Rules:

1. Generalize template details to the target repo.
2. Prefer adding missing baseline capabilities over documenting gaps away.
3. If the target repo already has an equivalent mechanism, align and document it
   instead of replacing it unnecessarily.
4. Keep edits reversible and validate the touched slice immediately.

### Focused Validation After Each Edit Slice

After the first substantive edit, run the cheapest meaningful check before doing
more exploration.

Examples:

- If `pyproject.toml` changes: run `uv lock` and then `uv sync` if needed.
- If `.pre-commit-config.yaml` changes: run the affected hook or
  `uv run pre-commit run --all-files` if narrow hook execution is awkward.
- If Python source changes: run the nearest relevant test, then mypy if the
  change affects typing.
- If docs change only: executable validation is not available, so verify the
  docs against the final config and move on.

If a validation fails, repair that same slice first. Do not widen scope until
the current slice is understood.

## Step 6. Re-Audit

Re-run the same compliance matrix after the fixes land.

Mark each finding as one of:

- Fixed
- Approved deviation
- Blocked
- Not applicable

The re-audit is not complete until every original finding has one of those
states.

## Step 7. Full Verification

Run the target repo's available validation commands. For repos aligned to this
template, the standard sequence is:

```bash
uv sync
uv run pre-commit run --all-files
uv run pytest
uv run mypy . --config-file=pyproject.toml
```

Also run any additional checks that the repo exposes, such as:

- service startup commands for Flask, FastAPI, Streamlit, or worker processes
- notebook kernel or import smoke checks
- devcontainer smoke validation when Docker/devcontainer tooling is available

If a service exists, start it long enough to confirm it boots successfully. If
the environment prevents that, record the exact blocker.

## Step 8. Report

Finish with the structure in
[audit-report-template](../assets/audit-report-template.md).

The report should include:

- Scope and approved exceptions
- Findings before remediation
- Changes applied
- Re-audit result
- Validation commands run and results
- Remaining blockers or approved deviations

## Decision Rules

Use these rules when the target repo does not match the template cleanly.

- Missing baseline feature: add it unless the user approved an exception.
- Different but equivalent implementation: keep it if it meets the same intent,
  then document the equivalence.
- Docs contradict automation: trust the executable config first.
- Target repo contains stale template placeholders: replace them with target repo
  values rather than copying more template text.
- Validation unavailable due to environment: report it explicitly, with the
  exact command that could not be run.
