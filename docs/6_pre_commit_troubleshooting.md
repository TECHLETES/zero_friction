# Pre-Commit Hooks Troubleshooting Guide

This guide covers common issues and solutions for all pre-commit hooks used in this Python template.

Run the diagnostic commands from the VS Code terminal attached to the
devcontainer. If the environment is missing, run `uv sync` or rebuild the
container instead of installing tools on the host.

## General Pre-Commit Issues

### Pre-Commit Won't Run at All

**Problem:** `pre-commit install` fails or hooks don't execute on commit.

**Solutions:**
```bash
# Reinstall hooks
pre-commit install --install-hooks

# Verify configuration is valid
pre-commit validate-config

# Check if .pre-commit-config.yaml exists
ls -la .pre-commit-config.yaml

# Run manually to test
pre-commit run --all-files
```

### "Command Not Found" or "hook id not found"

**Problem:** A specific hook can't be located.

**Solutions:**
```bash
# Clear pre-commit cache and reinstall
pre-commit clean
pre-commit gc
pre-commit install --install-hooks

# Verify the hook ID is correct in config
pre-commit run <hook-id> --all-files  # Should not error

# Update to latest versions
pre-commit autoupdate
```

### Hooks Failing on First Commit After Install

**Problem:** All files fail even though code should be valid.

**Solutions:**
1. Pre-commit flags **staging state** issues. Ensure all changes are staged:
   ```bash
   git add .
   ```

2. Run hooks manually to verify they work:
   ```bash
   pre-commit run --all-files
   ```

3. Some hooks modify files. Review changes:
   ```bash
   git diff
   git add .
   git commit -m "Fix pre-commit violations"
   ```

### Hook Modifies Files But Commit Still Fails

**Problem:** Hook auto-fixes code, but you still can't commit.

**Solutions:**
- This is normal! The hook found and fixed issues. Simply:
  ```bash
  git add <modified-files>
  git commit
  ```

---

## Import & Code Formatting Hooks

Ruff handles import sorting in this repo, so dedicated import-sorting setup is not used. Black remains the canonical formatter, and Ruff provides linting plus import-sorting corrections.

### Black (Code Formatter)

**Problem:** Black conflicts with other formatters (ruff)

**Solution:** Ensure execution order and compatible configs:
1. Black runs FIRST
2. Then ruff

**Problem:** "Cannot parse file" or "Unexpected token"

**Solutions:**
```bash
# Check Python syntax
python -m py_compile path/to/file.py

# Verify file encoding
file -i path/to/file.py  # Should show utf-8

# Run Black directly for better error messages
uv run black path/to/file.py --check --diff
```

**Problem:** Black changes line breaks inconsistently

**Solution:** Ensure `pyproject.toml` has Black config:
```toml
[tool.black]
line-length = 88
target-version = ["py312"]
```

### Ruff (Linting & Formatting)

**Problem:** Ruff conflicts with Black

**Solution:** Use consistent line-length and keep formatting rules aligned between Ruff and Black.

**Problem:** Ruff fails with "E501: line too long" even after Black

**Solution:** Check if ruff's line length differs from Black:
```toml
[tool.ruff]
line-length = 88  # Match Black's line length

[tool.ruff.lint]
extend-ignore = ["E203"]  # Compatibility with Black
```

**Problem:** Files keep changing between ruff and Black

**Solutions:**
```bash
# Run with verbose output
uv run ruff check --fix path/to/file.py --show-fixes

# Verify ruff config
ruff config

# Try running in isolation
ruff check --fix .
black .
```

### pyupgrade (Python Modernization)

**Problem:** Changes not applied or reverting

**Solution:** Ensure Python version target matches:
```yaml
- repo: https://github.com/asottile/pyupgrade
  hooks:
    - id: pyupgrade
      args: [--py312-plus]  # Must match your project's Python version!
```

**Problem:** Breaks type hints or compatibility

**Solutions:**
```bash
# Run with verbose to see what changed
uv run pyupgrade --py312-plus --diff path/to/file.py

# Check for specific issues
grep -r "Union\[" .  # pyupgrade changes Union to |
grep -r "Optional" . # pyupgrade changes Optional to x | None
```

---

## Type Checking

### mypy (Type Checker)

**Problem:** "error: Skipping analyzing... file not found" or missing stubs

**Solutions:**
```bash
# Install missing type stubs
uv sync  # Re-sync dependencies (includes type packages)

# Create py.typed file for your package
touch utils/py.typed
touch example/py.typed

# Check mypy config
cat pyproject.toml | grep -A 20 "\[tool.mypy\]"
```

**Problem:** "error: Cannot find implementation or library stub" for third-party package

**Solutions:**
```bash
# Add the types package to pyproject.toml, then refresh the container environment
uv lock
uv sync

# Or suppress warnings for that package
# At top of file:
# type: ignore[import]
```

**Problem:** "error: Function is missing return type annotation"

**Solution:** Add type hints to your functions:
```python
def my_function(x: int) -> str:
    """Function with type hints."""
    return str(x)
```

Or configure mypy to be less strict:
```toml
[tool.mypy]
disallow_untyped_defs = false
```

**Problem:** Mypy passes locally but fails in CI

**Solutions:**
```bash
# Clear cache and reinstall
rm -rf .mypy_cache
uv sync

# Verify mypy sees all files
mypy --config-file=pyproject.toml --show-traceback .

# Check Python version match
python --version
# Ensure version >= 3.12
```

---

## Spell Checking

### codespell (Spell Checker)

**Problem:** False positives (real words marked as typos)

**Solutions:**
```bash
# Add exceptions to pyproject.toml
[tool.codespell]
ignore-words-list = "crate,nd,sav,ser"
skip = "*.lock,*.log"

# Or add inline exception
# cSpell:ignore myword
```

**Problem:** Checks binary files or shouldn't-check files

**Solution:** Exclude in hook configuration:
```yaml
- id: codespell
  args: [--skip=*.lock,*.pyc,htmlcov/*]
  exclude: ^(htmlcov/|\.git)
```

**Problem:** Hook runs on all files, not just changed ones

**Solution:** Add type filter:
```yaml
- id: codespell
  types: [python, markdown]  # Only check these types
```

---

## Security Scanning

### Bandit (Security Checker)

**Problem:** "Issue found" but the code is safe

**Solutions:**
```bash
# Suppress specific issue in code
def eval_bad():
    eval("1 + 1")  # noqa: S307 (safely ignored)

# Or in pyproject.toml
[tool.bandit]
exclude_dirs = ["tests"]
skips = ["B101"]  # Skip assertion tests
```

**Problem:** Bandit checks test files when it shouldn't

**Solution:** Ensure config excludes tests:
```yaml
- id: bandit
  exclude: ^tests/
  args: [-ll, --skip, B101]  # Only high/medium severity
```

**Problem:** False positive on string with "exec" or "eval"

**Solution:** Use inline comment:
```python
# This is just documentation, not actual execution
example = "exec(code)"  # noqa: S303
```

### detect-secrets (Secret Detection)

**Problem:** Real secrets incorrectly flagged or false positives

**Solutions:**
```bash
# Scan and audit using the shared exclusions
scripts/hooks/run-detect-secrets.sh
```

**Problem:** Baseline file corrupted or out of sync

**Fixes:**
```bash
# Rebuild/update the baseline using the shared helper
scripts/hooks/run-detect-secrets.sh --non-interactive

# Verify it's valid JSON
uv run python -m json.tool .secret.baseline > /dev/null
```

**Problem:** Valid test credentials flagged as secrets

**Solution:** Run the shared helper from the devcontainer terminal, audit the
finding, and record the decision in `.secret.baseline`:

```bash
scripts/hooks/run-detect-secrets.sh
```

The helper reads exclusions from `[tool.detect-secrets]` in `pyproject.toml`.
Do not add a second exclusion list to `.pre-commit-config.yaml`.

For an intentional false positive, keep the audit decision in the baseline.
For files that should always be excluded, add a path regex to
`[tool.detect-secrets].exclude_files` in `pyproject.toml`; do not add a second
exclude list to `.pre-commit-config.yaml`.

### pip-audit (Dependency Vulnerabilities)

#### Adding a CVE Exclusion

**Problem:** A vulnerability is reported but you need to exclude it (false positive, known mitigated risk, or fix not available).

**Solution:** Add to `pyproject.toml` in the centralized `[tool.pip-audit]` section:

```toml
[tool.pip-audit]
# Centralized CVE/PYSEC exclusions for pip-audit
# Used by both pre-commit hooks and CI workflows via scripts/hooks/run-pip-audit.sh
ignore = [
    "CVE-2026-1703",  # Path traversal in pip (only affects pip extraction)
    "CVE-2024-XXXXX",  # Your new exclusion with explanation
]
```

**Workflow:**
1. Run pip-audit to see the vulnerability:
   ```bash
   uv run bash scripts/hooks/run-pip-audit.sh --progress-spinner off --desc
   ```
2. Identify the CVE/PYSEC ID from the output
3. Add the ID to the `ignore` list in `pyproject.toml`
4. Document why it's excluded (false positive, mitigated, etc.)
5. Both pre-commit (local) and CI (GitHub Actions) will automatically pick up the change

**Important:**
- All exclusions go in **ONE place**: `pyproject.toml [tool.pip-audit]`
- The `scripts/hooks/run-pip-audit.sh` wrapper reads from `pyproject.toml` and applies the exclusions
- Never add `--ignore-vuln` directly to pre-commit config or CI workflow—it goes out of sync
- Commit changes to `pyproject.toml` like any other code change

#### Updating Dependencies to Fix Vulnerabilities

**Problem:** Vulnerability has a fix available

**Solution:** Upgrade the vulnerable package:
```bash
# Check which package needs updating
uv pip show <package>

# Update the dependency
uv lock --upgrade-package <package>
uv sync

# Run pip-audit to verify
uv run bash scripts/hooks/run-pip-audit.sh --progress-spinner off --desc
```

#### Verifying Exclusions Work

**Test locally:**
```bash
# Run pip-audit with exclusions from pyproject.toml
uv run bash scripts/hooks/run-pip-audit.sh --progress-spinner off --desc

# Or run pre-commit manually
pre-commit run pip-audit --all-files
```

**Test in CI:**
Push changes to a branch → GitHub will run CI and show if pip-audit passes

---

## Docstring Validation

### pydocstyle (Docstring Checker)

**Problem:** "Missing docstring in public module/package"

**Solutions:**
Add module-level docstring at top of file:
```python
"""Package/module description.

Optional longer description with more details.
"""
import os
```

**Problem:** "First line should end with a period"

**Solution:** Ensure docstring first line ends with period and is a summary:
```python
def my_function():
    """Short summary that ends with period."""
    pass
```

**Problem:** "No summary line" or "blank line after summary"

**Solution:** Follow proper docstring format:
```python
def my_function(x: int) -> str:
    """Summary line in present tense.

    Args:
        x: Description of parameter.

    Returns:
        Description of return value.
    """
    return str(x)
```

**Problem:** Docstring errors in test code

**Solution:** Exclude tests in hook config:
```yaml
- id: pydocstyle
  exclude: ^tests/
  types: [python]
```

---

## Notebook Hooks

### nbstripout (Notebook Output Stripping)

**Problem:** Notebook outputs not being stripped

**Solutions:**
```bash
# Run directly to debug
uv run nbstripout path/to/notebook.ipynb --diff

# Verify hook is in config
grep -A 5 "nbstripout" .pre-commit-config.yaml

# Clear Jupyter cache
rm -rf ~/.jupyter/nbconvert_cache
```

**Problem:** Hook fails on special notebooks

**Solution:** Add to exclude pattern:
```yaml
- id: nbstripout-autoadd
  exclude: ^example/special_notebook\.ipynb$
```

### jupytext (Notebook/Script Sync)

**Problem:** `.py` and `.ipynb` versions diverge

**Solutions:**
```bash
# Force sync one direction
uv run jupytext --sync path/to/notebook.ipynb

# Check sync status
uv run jupytext --set-formats ipynb,py path/to/notebook.ipynb

# Verify config in pyproject.toml
cat pyproject.toml | grep -A 5 "\[tool.jupytext\]"
```

**Problem:** Merge conflicts between .py and .ipynb versions

**Solution:** Handle in pre-commit by setting explicit format:
```yaml
- id: jupytext
  args: [--sync, --fmt, "ipynb,py:percent"]
  require_serial: true
```

---

## Test Execution

### pytest (Test Runner)

**Problem:** Tests pass locally but fail in pre-commit

**Solutions:**
```bash
# Run exactly as pre-commit does
uv run pytest --cov --cov-fail-under=80 --beartype-packages=utils,example

# Check coverage report
open htmlcov/index.html

# Verify all tests discovered
uv run pytest --collect-only
```

**Problem:** Coverage too low (below 80%)

**Solutions:**
```bash
# See uncovered lines
open htmlcov/index.html

# Lower coverage requirement temporarily
# (in .pre-commit-config.yaml during development)
args: [--cov, --cov-fail-under=60]

# Or add coverage exemptions:
# In code:
def never_called():  # pragma: no cover
    pass
```

**Problem:** Tests timeout or hang

**Solution:** Add timeout to hook:
```yaml
- id: pytest
  timeout: 60  # seconds
```

---

## Basic File Checkers

### check-json, check-yaml, check-toml

**Problem:** "Invalid JSON/YAML/TOML"

**Solutions:**
```bash
# Validate specific files
python -m json.tool file.json  # JSON
python -c "import yaml; yaml.safe_load(open('file.yaml'))"  # YAML
python -c "import tomli; tomli.loads(open('file.toml').read())"  # TOML

# Common issues:
# - Trailing commas in JSON
# - Tabs instead of spaces in YAML
# - Unquoted strings in TOML
```

### check-added-large-files

**Problem:** False positive or need to commit large file

**Solutions:**
```bash
# Add exception
- id: check-added-large-files
  args: ["--maxkb=600"]  # Allow up to 600KB

# Or use git-lfs for large files
git lfs track "*.bin"
```

### trailing-whitespace, end-of-file-fixer

**Problem:** Hooks keep modifying files

**Solution:** These hooks automatically fix issues. Just stage the changes:
```bash
git add .
git commit  # Should now pass
```

### detect-private-key

**Problem:** False positive on legitimate keys

**Solution:** Add exclusion:
```yaml
- id: detect-private-key
  exclude: ^path/to/test/keys/
  args: ["--allow-missing-credentials"]
```

---

## Performance Issues

### Hooks Are Too Slow

**Solutions:**
```bash
# Run only changed files
pre-commit run --hook-stage commit

# Parallelization
# Add to .pre-commit-config.yaml top level:
# default_language_version:
#   python: python3.12

# Use --files to limit scope
pre-commit run <hook-id> --files="src/**/*.py"

# Disable slower hooks locally
SKIP=mypy,pytest git commit
```

### One Hook Takes Most Time

**Solution:**
```bash
# Profile individual hook
time pre-commit run <hook-id> --all-files

# Consider moving to pre-push stage
- id: pytest
  stages: [pre-push]  # Slower tests run on push, not commit
```

---

## Skipping Hooks

### Skip Specific Hook in Commit

```bash
SKIP=mypy,pytest git commit
```

### Temporarily Disable Hook

Edit `.pre-commit-config.yaml` and comment out the hook, then:
```bash
pre-commit install
```

### Skip Pre-Commit Entirely

```bash
git commit --no-verify  # ⚠️ Use sparingly!
```

---

## Debugging & Getting Help

### Get Full Verbose Output

```bash
# Run with max verbosity
pre-commit run --all-files --verbose

# Show what each hook does
pre-commit run <hook-id> --all-files --verbose
```

### Dry Run Without Modifying Files

```bash
# Check what would change
pre-commit run <hook-id> --all-files --dry-run 2>/dev/null || true
```

### Clean Up & Reset

```bash
# Clear all cache
pre-commit clean
pre-commit gc

# Reinstall from scratch
rm -rf .pre-commit
pre-commit install --install-hooks --overwrite
```

### Check Hook Versions

```bash
# See installed hook versions
pre-commit --version

# List all hook repos and versions
grep "rev:" .pre-commit-config.yaml
```

---

## Common Multi-Hook Issues

### Import/Format/Lint Cycle (A Modifies, B Undoes, C Redoes)

**Problem:** Black and ruff keep changing files back and forth.

**Solution:** Ensure proper hook order and compatible configuration:
```yaml
# 1. Python modernization
- repo: https://github.com/asottile/pyupgrade
  hooks:
    - id: pyupgrade
      args: [--py312-plus]

# 2. Linting + formatting LAST
- repo: https://github.com/astral-sh/ruff-pre-commit
  hooks:
    - id: ruff
      args: [--fix]
```

And ensure config compatibility:
```toml
[tool.black]
line-length = 88
```
[tool.ruff]
line-length = 88
ignore = ["I"]  # Don't let ruff handle imports
```

---

## Next Steps

- Review hook documentation: `pre-commit try-repo <repo-url>`
- Update all hooks: `pre-commit autoupdate`
- Profile performance: Run individual hooks with `time` command
- Check project issues/FAQs in each hook's GitHub repository
