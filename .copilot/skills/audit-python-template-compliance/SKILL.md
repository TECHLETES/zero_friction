---
name: audit-python-template-compliance
description: 'Audit a Python repository against the TECHLETES python_basic_template and bring it into compliance. Use when you need to compare a repo to the template, review drift in pyproject/pre-commit/CI/devcontainer/docs/secrets workflow, remediate gaps, rerun the audit, validate the repo, and produce a compliance report.'
argument-hint: 'Target repository path or repo name, plus any approved exceptions from the template'
user-invocable: true
---

# Python Template Compliance Audit

Use this skill to audit a target repository against the TECHLETES Python basic
template, align the repo to the template where appropriate, re-audit, run the
available validation commands, and finish with a concise audit report.

## Use This Skill When

- A repository should conform to the TECHLETES Python template but predates it.
- You need to detect and fix drift in setup, tooling, quality gates, docs, or
  secret-handling workflows.
- You want a structured compliance pass that ends with remediation and
  verification instead of a checklist only.

## Do Not Use This Skill When

- The target repository is not primarily a Python repository.
- The target repository is intentionally on a different baseline and the user
  has not asked to migrate it toward this template.
- The task is only to review or explain differences without making changes.

## Scope Rules

1. Confirm the target repository and record any approved exceptions before
   changing files.
2. Treat executable configuration as the source of truth when prose docs drift.
3. Generalize template-specific values instead of copying them literally.
   Package names, repo URLs, excluded directories, cache volume names, and
   secret references must match the target repository.
4. Fix root causes first. Do not patch around validation failures with
   one-off exceptions unless the user explicitly approves the deviation.

## Required References

- Read the template baseline in [template-baseline](./references/template-baseline.md).
- Use the asset index in [template-config-settings](./references/template-config-settings.md)
  and its linked literal templates when the audit needs exact tool settings
  instead of capability-level checks.
- Follow the execution sequence in [audit-procedure](./references/audit-procedure.md).
- Use the final structure in [audit-report-template](./assets/audit-report-template.md).

## Deliverables

By the end of the run, produce all of the following when feasible:

1. A concrete audit of the target repo against the template baseline.
2. A remediation plan for every non-compliant item.
3. Implemented fixes, executed in parallel where independence is real.
4. A second audit confirming whether the repo is now compliant.
5. A validation pass using the repo's available quality gates and startup paths.
6. A final audit report summarizing findings, changes, verification, and any
   approved remaining deviations.

## Working Style

- Start from the closest controlling files: `pyproject.toml`,
  `.pre-commit-config.yaml`, `.github/workflows/`, `.devcontainer/`,
  `scripts/hooks/`, `README.md`, `docs/`, first-party packages, and test entry
  points.
- Keep the first edits small and validate immediately.
- Parallelize only independent slices, such as docs versus CI copy edits, after
  you know they do not share the same controlling config.
- If the target repo lacks a required baseline feature, add the minimal
  compliant implementation and then validate it.

## Completion Standard

The skill is complete only after you have either:

- Brought the repository into compliance and verified it, or
- Identified the exact blockers, documented the remaining deviations, and
  reported which validations could not be completed.
