# Audit Report Template

## Scope

- Target repository:
- Branch:
- Expected alignment level:
- Approved deviations:

## Baseline Summary

- Template baseline used:
- Source-of-truth files reviewed:

## Findings Before Remediation

| Area | Expected | Actual | Severity | Planned action |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

## Changes Applied

| Area | Files changed | Root-cause fix | Validation after edit |
| --- | --- | --- | --- |
|  |  |  |  |

## Re-Audit Result

| Area | Final state | Notes |
| --- | --- | --- |
|  | Fixed / approved deviation / blocked / not applicable |  |

## Validation Run

| Command or check | Result | Notes |
| --- | --- | --- |
| `uv sync` |  |  |
| `uv run pre-commit run --all-files` |  |  |
| `uv run pytest` |  |  |
| `uv run mypy . --config-file=pyproject.toml` |  |  |

Add service startup checks or other repo-specific validations below the table.

## Final Compliance Status

- Compliant:
- Remaining deviations:
- Blockers:

## Follow-Up

- Immediate follow-up items:
- Optional future improvements:
