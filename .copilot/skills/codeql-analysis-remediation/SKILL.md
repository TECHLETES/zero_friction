# Skill: CodeQL repository analysis and remediation orchestration

## Purpose

Use this skill when the task is to analyze the current repository with CodeQL, identify security or quality issues, plan safe fixes, delegate implementation work to parallel coder agents, and verify that the repository still works after changes.

The goal is not only to run CodeQL, but to turn the findings into controlled, reviewable code improvements.

## Operating mode

You are the orchestration agent. Your default workflow is to:

1. Inspect the repository and determine applicable languages
2. Check CodeQL CLI availability
3. Create or reuse CodeQL databases
4. Run CodeQL analysis
5. Interpret findings and create an implementation plan
6. Delegate independent tasks to parallel coder agents
7. Review changes and run verification checks
8. Produce a final remediation report

**Do not immediately edit code.** Delegate all but the smallest changes to coder agents.

## Quick start

See [references/codeql-workflow.md](references/codeql-workflow.md) for the detailed step-by-step workflow.

Key steps:
- **Check tools:** `codeql version`
- **Supported languages:** Python (`python`), JavaScript/TypeScript (`javascript-typescript`)
- **Database directory:** `.codeql/dbs/` (reuse if possible)
- **Results directory:** `.codeql/results/` (SARIF format)
- **Finding prioritization:** See [references/sarif-interpretation.md](references/sarif-interpretation.md)
- **Safe remediation rules:** See [references/safe-remediation-rules.md](references/safe-remediation-rules.md)

## Key constraints

- Do not recreate CodeQL databases unnecessarily; reuse when safe
- Only run CodeQL for languages actually present in the repository
- Do not blindly fix every CodeQL finding; classify each finding first
- Do not suppress findings without clear justification
- Do not make broad refactors while fixing security findings
- Always verify that the repository still works after changes

## Repository inspection checklist

**Python indicators:**
- `*.py` files, `pyproject.toml`, `requirements.txt`, `setup.py`, `setup.cfg`, `Pipfile`, `uv.lock`, `poetry.lock`

**JavaScript/TypeScript indicators:**
- `*.js`, `*.jsx`, `*.ts`, `*.tsx` files, `package.json`, `tsconfig.json`, `vite.config.*`, `next.config.*`, `webpack.config.*`

## Delegation to coder agents

Use [assets/task-delegate-template.md](assets/task-delegate-template.md) as a template.

Each task must include:
- Objective and CodeQL context
- Scope (files allowed to modify, do not modify)
- Implementation constraints
- Verification commands
- Expected output

Assign independent tasks to parallel coder agents. Avoid assigning multiple agents to edit the same file.

## Review and verification

After coder agents return changes:
1. Inspect all diffs
2. Check whether each task addresses the finding
3. Check for regressions or unrelated changes
4. Use language-specific verification commands (see [references/verification-commands.md](references/verification-commands.md))
5. Rerun CodeQL for affected languages if changes are substantial

## Final report

Use [assets/report-template.md](assets/report-template.md) as a template.

A fix is complete only when:
- The targeted finding is gone, **or**
- The finding is proven to be a false positive and documented, **or**
- The remaining risk requires explicit human product or security decision

---

**Related files:**
- [references/codeql-workflow.md](references/codeql-workflow.md) — Detailed step-by-step workflow
- [references/sarif-interpretation.md](references/sarif-interpretation.md) — How to interpret and prioritize findings
- [references/safe-remediation-rules.md](references/safe-remediation-rules.md) — Safety guidelines for fixing issues
- [references/verification-commands.md](references/verification-commands.md) — Language-specific verification
- [assets/codeql-commands.sh](assets/codeql-commands.sh) — Reusable CodeQL shell commands
- [assets/task-delegate-template.md](assets/task-delegate-template.md) — Template for delegating tasks
- [assets/report-template.md](assets/report-template.md) — Final report template
