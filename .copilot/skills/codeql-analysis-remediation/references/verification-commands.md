# Language-specific verification commands

After making code changes to fix CodeQL findings, run relevant verification commands to ensure the repository still works.

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
1. `uv run pytest` (or `pytest`) — Unit tests first
2. `uv run mypy .` (or `mypy .`) — Type checking
3. `uv run ruff check . --fix` — Linting and auto-fixes
4. `uv run black .` (or `black .`) — Code formatting

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
1. `npm run lint` (or `npm run lint:fix`) — Linting
2. `npm run typecheck` — TypeScript type checking
3. `npm test` — Unit tests
4. `npm run build` — Build (if applicable)

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
   - JavaScript: `node -c <file>`
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
- **Python:** `uv run pytest`
- **JavaScript/TypeScript:** `npm test`

These are the most common, lowest-risk verification points.
