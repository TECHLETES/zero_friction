---
name: audit-python-template-compliance
description: 'Audit a Python repository against the TECHLETES python_basic_template and bring it into compliance. Use when you need to align a repo to the template by copying the shipped config bases, review drift in pyproject/pre-commit/CI/devcontainer/docs/secrets workflow, remediate gaps, rerun the audit, validate the repo, and produce a compliance report.'
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
3. For config-bearing files indexed by this skill, copy the provided base file
  instead of recreating it. Use files shipped directly with this skill when
  they exist; otherwise use the repo-sourced assets materialized from
  `assets/config-template-manifest.txt` into `assets/config-template/` at
  install time, and only after that replace the approved target-specific
  values.
4. Package names, repo URLs, excluded directories, cache volume names, and
  secret references must match the target repository.
5. Fix root causes first. Do not patch around validation failures with
   one-off exceptions unless the user explicitly approves the deviation.

## Required References

- Read the template baseline in [template-baseline](./references/template-baseline.md).
- Use the asset index in [template-config-settings](./references/template-config-settings.md)
  as the default copy source for config files. When a matching shipped file or
  materialized repo asset exists, copy it first and then make only the
  approved target-specific substitutions.
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
- When a config surface has a shipped base file or a materialized repo asset in
  this skill, copy that file into place before making local adjustments. Do not
  rebuild those configs from memory.
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
