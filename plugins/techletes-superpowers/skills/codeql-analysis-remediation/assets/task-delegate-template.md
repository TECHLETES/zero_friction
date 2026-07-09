# Task delegation template for CodeQL remediation

Use this template when delegating a fix to a coder agent.

---

## Task for coder agent: [SHORT TITLE]

### Objective

[What must be fixed? One or two sentences.]

Example:
- "Replace unsanitized user input in SQL query with parameterized query"
- "Add input validation at endpoint handler before passing to database layer"

### CodeQL context

Provide the specific finding that triggered this task:

- **Rule ID:** `py/sql-injection` (or similar)
- **Severity:** Error / Warning / Note
- **File:** `src/database/models.py`
- **Line:** 42
- **Message:** "[Short message from CodeQL]"
- **Code flow:** [Brief description of how data flows unsafely, if available]

Example:
```
- Rule ID: py/sql-injection
- Severity: Error
- File: app/db/queries.py
- Line: 28
- Message: SQL query built using unsanitized user input from request parameter
```

### Scope

**Allowed files to modify:**
- `app/db/queries.py`
- `app/db/models.py`
- `tests/test_db.py` (add/update tests)

**Do not modify:**
- Unrelated files
- Generated files
- Lock files (unless dependency changes are explicitly required)
- Public API signatures (unless the task explicitly requires a change)

### Implementation constraints

- ✅ Prefer parameterized queries, safe path handling, or other established secure patterns
- ✅ Preserve public API behavior (function signatures, return types) unless the finding proves it unsafe
- ✅ Keep changes minimal — fix the issue, do not refactor unrelated code
- ✅ Add or update tests where practical
- ✅ Use type hints and docstrings
- ❌ Do not suppress CodeQL findings (e.g., `# noqa`) unless there is documented strong justification
- ❌ Do not add broad exception handlers that hide errors
- ❌ Do not disable security checks to make tests pass

### Verification

Run the most relevant commands for this codebase:

**Python repositories:**
```bash
uv run pytest                        # Run tests
uv run mypy . --config-file=pyproject.toml  # Type check
uv run ruff check .                  # Lint
```

**JavaScript/TypeScript repositories:**
```bash
npm test                             # Run tests
npm run typecheck                    # Type check
npm run lint                         # Lint
```

**Both:**
```bash
git diff HEAD                        # Review changes
```

Ensure:
- All tests pass
- Type checking passes
- Linting passes
- No unrelated changes are included

### Output required

Provide:

1. **Summary of changes** — What was fixed and how?
2. **Files modified** — Which files changed?
3. **Tests added/updated** — Did you test the fix?
4. **Verification results** — Which commands passed?
5. **Remaining risks or notes** — Any concerns about the fix?

Example output:
```markdown
## Changes made

- Fixed SQL injection in `app/db/queries.py:28` by replacing string concatenation with parameterized query
- Updated `get_user_by_id()` to accept user_id as integer (already enforced by type hints)
- Added test case `test_user_query_with_special_characters()` to verify safety

## Files modified

- `app/db/queries.py`
- `tests/test_db.py`

## Verification

- `pytest`: ✓ All tests pass (5 new, 42 existing)
- `mypy`: ✓ No type errors
- `ruff`: ✓ All checks pass
- `git diff`: Shows only intended changes (no unrelated refactoring)

## Notes

- The fix is minimal: only changed the query execution, no API changes
- Input validation already present at the request handler level
- No security checks disabled
```

---

## Tips for the orchestration agent

When creating a task:

1. **Be specific about scope** — Clearly list which files can and cannot be modified
2. **Explain the context** — Include the CodeQL finding, not just a generic description
3. **Define success criteria** — What should verification look like?
4. **Keep tasks independent** — Avoid assigning multiple agents to edit the same file
5. **Provide examples** — If safe patterns are unclear, show what good looks like

When reviewing completed tasks:

1. **Check the diff** — Does it fix the issue without unrelated changes?
2. **Verify tests** — Are there new tests? Do they pass?
3. **Confirm constraints** — Did the agent respect the scope?
4. **Check safety** — Does the fix use established secure patterns?
5. **Review the output** — Is the explanation clear and accurate?
