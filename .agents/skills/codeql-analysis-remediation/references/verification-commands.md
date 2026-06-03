# Language-specific verification commands

After making code changes to fix CodeQL findings, run the cheapest relevant verification commands first, then widen only if the local fix holds.

For CodeQL remediation, verification usually happens in two layers:

1. **Local slice validation** for the touched file or behavior
2. **Scan validation** by comparing before/after SARIF or rerunning a narrow query/full language suite as appropriate

Do not jump straight to broad test suites when a cheap file-scoped check can falsify the change faster.

## Python verification

Before running commands, check what tools and scripts the project supports.

**Inspect for:**
- `pyproject.toml` — Python project metadata
- `pytest.ini` — pytest configuration
- `tox.ini` — tox automation config
- `noxfile.py` — nox automation config
- `Makefile` — Make targets
- `uv.lock` — uv lock file (indicates uv usage)

### Possible Python verification commands

| Command | Purpose |
|---------|---------|
| `uv run pytest` | Run tests via uv |
| `pytest` | Run tests directly |
| `python -m pytest` | Run tests via Python module |
| `uv run pytest --cov` | Run tests with coverage via uv |
| `pytest --cov` | Run tests with coverage |
| `uv run ruff check .` | Lint with ruff via uv |
| `ruff check .` | Lint with ruff directly |
| `uv run black --check .` | Check code formatting via uv |
| `black --check .` | Check code formatting directly |
| `uv run mypy .` | Type check via uv |
| `mypy .` | Type check directly |
| `uv run pre-commit run --all-files` | Run all pre-commit hooks via uv |
| `pre-commit run --all-files` | Run all pre-commit hooks directly |

**Recommended order:**
1. `python -m py_compile path/to/file.py` — Cheap syntax validation for touched files
2. Focused test command for the touched module or Django app
3. `uv run pytest` (or `pytest`) — Broader unit tests when justified
4. `uv run mypy .` (or `mypy .`) — Type checking when used by the project
5. `uv run ruff check .` — Linting
6. `uv run pre-commit run --all-files` — Broader repository validation when needed

If any command fails:
- Determine whether the failure is caused by your changes or was pre-existing
- Do not claim the repository works unless verification passed
- Report the failure and any relevant logs

### Example Python verification session

```bash
# Run tests
uv run pytest
# ✓ Tests pass

# Type check
uv run mypy . --config-file=pyproject.toml
# ✓ No type errors

# Lint
uv run ruff check . --fix
# ✓ All checks pass

# Pre-commit hooks (if using them)
uv run pre-commit run --all-files
# ✓ All hooks pass

echo "✓ Python verification complete"
```

## JavaScript / TypeScript verification

Before running commands, inspect `package.json` to see available scripts.

**Inspect for:**
- `package.json` — Project metadata and scripts
- `tsconfig.json` — TypeScript configuration
- `vite.config.*` — Vite configuration
- `next.config.*` — Next.js configuration
- `webpack.config.*` — Webpack configuration
- `jest.config.*` — Jest configuration

### Possible JavaScript/TypeScript verification commands

| Command | Purpose |
|---------|---------|
| `npm test` | Run tests |
| `npm run test` | Run tests (alternate) |
| `npm run lint` | Lint code |
| `npm run lint:fix` | Lint and auto-fix |
| `npm run typecheck` | Type check TypeScript |
| `npm run build` | Build project |
| `npm run format` | Format code |
| `npm run format:check` | Check code formatting |

**Recommended order:**
1. `node --check path/to/file.js` — Cheap syntax validation for touched files
2. `npm run lint` (or `npm run lint:fix`) — Linting
3. `npm run typecheck` — TypeScript type checking
4. `npm test` — Unit tests
5. `npm run build` — Build (if applicable)

If any command fails:
- Determine whether the failure is caused by your changes or was pre-existing
- Do not claim the repository works unless verification passed
- Report the failure and any relevant logs

### Example JavaScript/TypeScript verification session

```bash
# Lint and auto-fix
npm run lint:fix
# ✓ Linting passed

# Type check
npm run typecheck
# ✓ No type errors

# Run tests
npm test
# ✓ All tests pass

# Build
npm run build
# ✓ Build succeeded

echo "✓ JavaScript/TypeScript verification complete"
```

## Scan verification

For CodeQL work, validation is incomplete until you verify the finding delta.

Use one of these patterns:

1. **Before/after SARIF compare**
   - Keep the original SARIF as the baseline
   - Write refreshed output to a distinct file such as `codeql-python-after.sarif`
   - Compare rule ID, file, line, and message
   - Treat line-only movement carefully; it may reflect the same finding after edits

2. **Narrow rerun for a residual finding**
   - Use when one rule or one remaining finding is under investigation
   - Prefer this when a full reanalysis is expensive and the question is localized

3. **Full language rerun**
   - Use after substantial changes or when the baseline database is likely stale

If a terminal repeatedly reports that a long CodeQL run "may be waiting for input," confirm from the output whether it is still making progress before treating it as blocked.

## Repository state verification

For any language, check basic repository health:

1. **No uncommitted changes from pre-commit hooks:**
   ```bash
   git status
   # Should show no "modified" files if formatting/linting hooks auto-fixed issues
   # Should show no unexpected files
   ```

2. **No syntax errors in primary files:**
   - Python: `python -m py_compile <file>`
   - JavaScript: `node --check <file>`
   - TypeScript: `tsc --noEmit`

3. **No circular imports or module issues:**
   - Python: `python -c "import <module>"`
   - JavaScript: Try importing the main entry point

## Handling verification failures

If a verification command fails:

1. **Understand the failure:**
   - Read the error message carefully
   - Check whether it is related to your changes
   - Verify the failure is not pre-existing

2. **Distinguish between categories:**
   - **Your change broke it:** Revert or fix your change
   - **Pre-existing failure:** Report it separately; do not claim it as part of your work
   - **Environment issue:** Fix the environment (install missing dependencies, etc.)

3. **Report failure clearly:**
   - Command that failed
   - Exit code
   - Error output
   - Whether it is pre-existing
   - Whether it blocks your fix

## When verification is optional

Some checks are optional depending on the project:

- Build commands (`npm run build`) may not exist for libraries
- TypeScript checking may not apply to JavaScript-only projects
- Coverage thresholds may not be enforced
- Some linters may be optional

Only run commands that are actually configured in the project.

If in doubt, run:
- **Python:** `python -m py_compile <touched-file>` and then `uv run pytest`
- **JavaScript/TypeScript:** `node --check <touched-file>` and then `npm test`

These are the most common, lowest-risk verification points.
