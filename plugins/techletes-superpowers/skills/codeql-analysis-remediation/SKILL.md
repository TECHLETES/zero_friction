---
name: codeql-analysis-remediation
description: >
  Analyze repository with CodeQL, identify issues, plan and implement safe fixes, verify results. Lead remediation efforts with controlled, reviewable improvements. Use when task involves CodeQL security/quality analysis and remediation.
---

# Skill: CodeQL repository analysis and remediation orchestration

## Purpose

Use this skill when the task is to analyze the current repository with CodeQL, identify security or quality issues, plan safe fixes, implement or delegate remediations as appropriate, and verify that the repository still works after changes.

The goal is not only to run CodeQL, but to turn the findings into controlled, reviewable code improvements.

## Operating mode

You are the remediation lead. Your default workflow is to:

1. Inspect the repository and determine applicable languages
2. Check CodeQL CLI availability
3. Create or reuse CodeQL databases
4. Run CodeQL analysis
5. Interpret findings and choose the smallest safe remediation path
6. Fix locally when the change is narrow, or delegate independent tasks when parallel work is actually useful
7. Run the cheapest focused verification for each touched slice
8. Reanalyze and compare before/after results
9. Produce a final remediation report

**Do not default to delegation.** Direct, local edits are preferred when a finding is confined to one file or one small slice of behavior. Delegate only when the findings split cleanly across files or subsystems, or when parallel work materially reduces turnaround time.

## Quick start

See [references/codeql-workflow.md](references/codeql-workflow.md) for the detailed step-by-step workflow.

Key steps:
- **Check tools:** `codeql version`
- **Supported languages:** Python (`python`), JavaScript/TypeScript (`javascript-typescript`)
- **Database directory:** `.codeql/dbs/` (reuse if possible)
- **Results directory:** `.codeql/results/` (SARIF format)
- **Compare results:** keep a baseline SARIF and write refreshed output to a distinct `*-after.sarif` file
- **Residual validation:** prefer narrow reruns for the exact remaining rule or language slice before paying for another full scan
- **Finding prioritization:** See [references/sarif-interpretation.md](references/sarif-interpretation.md)
- **Safe remediation rules:** See [references/safe-remediation-rules.md](references/safe-remediation-rules.md)

## Key constraints

- Do not recreate CodeQL databases unnecessarily; reuse when safe
- Only run CodeQL for languages actually present in the repository
- Do not blindly fix every CodeQL finding; classify each finding first
- Do not suppress findings without clear justification
- Do not make broad refactors while fixing security findings
- Prefer the cheapest discriminating validation after each substantive fix
- Compare SARIF carefully; line shifts alone do not prove new findings
- Always verify that the repository still works after changes

## Repository inspection checklist

**Python indicators:**
- `*.py` files, `pyproject.toml`, `requirements.txt`, `setup.py`, `setup.cfg`, `Pipfile`, `uv.lock`, `poetry.lock`

**JavaScript/TypeScript indicators:**
- `*.js`, `*.jsx`, `*.ts`, `*.tsx` files, `package.json`, `tsconfig.json`, `vite.config.*`, `next.config.*`, `webpack.config.*`

## Direct work vs delegation

Default to direct remediation when:
- The finding is isolated to one file or one local control path
- A small reversible edit plus a narrow verification can confirm the fix
- The overhead of splitting context across agents would exceed the size of the change

Delegate when:
- Findings split cleanly across multiple files or languages
- The changes are independent and can be reviewed in parallel
- One slice needs focused implementation while you continue scan comparison or review work

When delegating, avoid assigning multiple agents to edit the same file.

## Delegation to coder agents

Use [assets/task-delegate-template.md](assets/task-delegate-template.md) as a template.

Each task must include:
- Objective and CodeQL context
- Scope (files allowed to modify, do not modify)
- Implementation constraints
- Verification commands
- Expected output

Assign independent tasks to parallel coder agents only when the split is clean. Avoid assigning multiple agents to edit the same file.

## Review and verification

After each remediation, whether done locally or by a coder agent:
1. Inspect the diff for scope control
2. Check whether the change addresses the targeted finding
3. Run the cheapest focused verification first
4. Use language-specific verification commands when the touched slice justifies them (see [references/verification-commands.md](references/verification-commands.md))
5. Rerun CodeQL for affected languages if changes are substantial
6. Compare before/after SARIF and call out residual findings, removed findings, and line-shift-only churn

## Final report

Use [assets/report-template.md](assets/report-template.md) as a template.

A fix is complete only when:
- The targeted finding is gone, **or**
- The finding is proven to be a false positive and documented, **or**
- The remaining risk requires explicit human product or security decision

When reporting results:
- Distinguish targeted fixes from unrelated findings that were left alone
- Note when a narrow query rerun was used to confirm a residual fix
- Call out any findings that appear "new" only because edited files shifted line numbers

---

**Related files:**
- [references/codeql-workflow.md](references/codeql-workflow.md) — Detailed step-by-step workflow
- [references/sarif-interpretation.md](references/sarif-interpretation.md) — How to interpret and prioritize findings
- [references/safe-remediation-rules.md](references/safe-remediation-rules.md) — Safety guidelines for fixing issues
- [references/verification-commands.md](references/verification-commands.md) — Language-specific verification
- [assets/codeql-commands.sh](assets/codeql-commands.sh) — Reusable CodeQL shell commands
- [assets/task-delegate-template.md](assets/task-delegate-template.md) — Template for delegating tasks
- [assets/report-template.md](assets/report-template.md) — Final report template
