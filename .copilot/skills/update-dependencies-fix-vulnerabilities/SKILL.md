---
name: update-dependencies-fix-vulnerabilities
description: Systematically scan for and fix security vulnerabilities in Python (pip audit) and JavaScript/bun (bun audit) dependencies. Use this skill when the user asks to fix security vulnerabilities, update dependencies, patch CVEs, or audit packages for security issues.
license: Complete terms in LICENSE.txt
---

# Dependency Vulnerability Remediation Skill

This skill guides systematic identification and resolution of security vulnerabilities in Python and JavaScript/TypeScript dependencies. It handles scanning, prioritization, conflict resolution, and validation.

## When to Use This Skill

Use this skill when:
- Running security audits to identify vulnerabilities
- Fixing CVEs and security patches
- Updating dependencies to resolve known issues
- Cleaning up ignored/suppressed vulnerabilities that now have fixes
- Validating that applications remain functional after dependency updates

## Workflow Overview

The skill uses a three-phase approach:
1. **Scan Phase**: Identify all vulnerabilities
2. **Resolution Phase**: Update versions and resolve conflicts
3. **Validation Phase**: Ensure application stability

---

## Phase 1: Python Dependency Scan

### Step 1a: Run pip-audit Scanner

Use the `run-pip-audit.sh` helper script to scan for Python vulnerabilities. This script automatically applies CVE exclusions from `pyproject.toml` `[tool.pip-audit]`.

```bash
./scripts/hooks/run-pip-audit.sh --progress-spinner off --desc
```

**Capture Output**: Document all reported CVEs with:
- CVE ID (e.g., CVE-2024-XXXXX)
- Package name
- Affected versions
- Fixed version (if available)
- Severity level

**Decision Point**: Are there vulnerabilities?
- **No vulnerabilities**: Proceed to Phase 2 (JavaScript/bun, if applicable)
- **Vulnerabilities found**: Continue to Step 1b

### Step 1b: Categorize Vulnerabilities

For each CVE, determine:

1. **Is it in ignored list?** Check `pyproject.toml` `[tool.pip-audit]` `ignore` array
   - If YES: Check if a fixed version now exists for this package
   - If NO: Proceed to Step 1c

2. **Severity & Impact**:
   - **CRITICAL**: Remote code execution, authentication bypass
   - **HIGH**: Data breach potential, privilege escalation
   - **MEDIUM**: Denial of service, information disclosure
   - **LOW**: Edge cases, minor impacts

3. **Fixability**:
   - **Direct fix**: Update package to fixed version
   - **Requires conflict resolution**: Multiple dependencies on conflicting versions
   - **No fix available**: Package abandoned or maintainer not responsive
   - **Requires major version bump**: Breaking changes

### Step 1c: Update Python Dependencies

For each vulnerability (prioritize CRITICAL first):

1. **Identify the affected package** from the audit output
2. **Check the current version** in `pyproject.toml` `[dependencies]` or `[dependency-groups.dev]`
3. **Add or update the package** to a version that fixes the CVE:
   ```toml
   [dependencies]
   # Old: requests = ">=2.28.0,<3.0.0"  # Vulnerable to CVE-2024-XXXXX in 2.28.0-2.30.x
   requests = ">=2.31.0,<3.0.0"          # Fixed in 2.31.0+
   ```

4. **Use semantic versioning**: `package>=MAJOR.MINOR.Z,<NEXT_MAJOR`
   - This allows patch updates automatically, but blocks major breaking changes

5. **For ignored CVEs with fixes**: Update `pyproject.toml` to:
   - Remove the CVE from `[tool.pip-audit]` `ignore` array
   - Update the package version to the fixed version

### Step 1d: Lock Dependencies

Generate a new lock file:

```bash
uv lock
```

**Decision Point**: Does `uv lock` succeed without conflicts?
- **YES**: Continue to Step 1e
- **NO**: Continue to Step 1f (Conflict Resolution)

### Step 1e: Sync Virtual Environment

```bash
uv sync
```

Verify the installation succeeded and all packages are installed.

### Step 1f: Conflict Resolution (if needed)

If `uv lock` fails with version conflicts:

1. **Identify the conflict** from the error message:
   ```
   error: No solution found when resolving dependencies:
   ├─ package-a 1.0 requires package-c >=2.0,<3.0
   └─ package-b 2.0 requires package-c >=1.5,<2.0
   ```

2. **Resolution strategies** (in order of preference):
   - **Update one conflicting package** to a newer version that relaxes constraints
   - **Replace package** with a maintained alternative
   - **Accept a lower constraint** (accept a not-fully-fixed CVE if severity permits)
   - **Open an issue** with the maintainer if a fix is needed but unavailable

3. **Iterate**:
   - Make one change at a time
   - Run `uv lock` to validate
   - If still failing, make the next change
   - Repeat until `uv lock` succeeds

4. **Document decisions**: Add comments in `pyproject.toml` explaining complex choices:
   ```toml
   # Conflict: package-a requires c>=2.0 but package-b needs c<2.0
   # Resolution: Updated package-b to 3.0 which supports c>=2.0
   package-b = ">=3.0,<4.0"
   ```

---

## Phase 1 Validation: Python Tests

Once dependencies are locked and synced:

```bash
uv sync
uv run pytest
```

**Decision Point**: Do all tests pass?
- **YES**: Python vulnerabilities are resolved ✓
- **NO**: There is a compatibility issue
  - Review test output carefully
  - Check if the new package version has breaking changes
  - Consider reverting to a previous compatible version
  - Or update code to match new API

---

## Phase 2: JavaScript/Bun Dependency Scan (if applicable)

Only proceed if the project has JavaScript/TypeScript dependencies (check for `package.json` and `bun.lock`).

### Step 2a: Check for bun.lock and package.json

```bash
ls -la package.json bun.lock
```

**Decision Point**: Do both files exist?
- **NO**: Skip Phase 2, proceed to completion
- **YES**: Continue to Step 2b

### Step 2b: Run bun audit

```bash
bun audit
```

**Capture Output**: Document all vulnerabilities with:
- Package name
- Current version
- Vulnerable range
- Fixed version
- Severity level

**Decision Point**: Are there vulnerabilities?
- **No vulnerabilities**: Proceed to completion
- **Vulnerabilities found**: Continue to Step 2c

### Step 2c: Update Bun Packages (Non-Breaking)

Run automatic non-breaking updates:

```bash
bun update
```

This updates all packages to their latest non-breaking versions (respects semver constraints in `package.json`).

### Step 2d: Re-audit After Updates

```bash
bun audit
```

**Decision Point**: Are vulnerabilities resolved?
- **YES**: Continue to Step 2e
- **NO**: Continue to Step 2f (Manual Resolution)

### Step 2e: Manual Vulnerability Resolution (if needed)

For remaining vulnerabilities:

1. **Identify the affected package** and required fixed version
2. **Check package.json constraint**: Can it be updated?
   ```json
   {
     "dependencies": {
       "vulnerable-package": "^1.2.0"  // Requires ^1.0
     }
   }
   ```

3. **Update the version constraint** to allow the fixed version:
   ```json
   {
     "dependencies": {
       "vulnerable-package": "^1.5.0"  // Now allows 1.5.0 fix
     }
   }
   ```

4. **Install updates**:
   ```bash
   bun install
   ```

5. **Re-audit**:
   ```bash
   bun audit
   ```

6. **Iterate** until all critical/high vulnerabilities are resolved

---

## Phase 2 Validation: Frontend Tests

Once bun.lock is updated and all packages installed:

1. **Run dev server** (verify no startup errors):
   ```bash
   bun run dev
   ```
   - Allow 5-10 seconds for full startup
   - Check console for errors
   - Ctrl+C to stop

2. **Run tests** (if frontend tests exist):
   ```bash
   bun run test
   ```
   - Or: `bun run test:ui` if available
   - All tests must pass

**Decision Point**: Do dev server and tests work?
- **YES**: JavaScript vulnerabilities are resolved ✓
- **NO**: There is a compatibility issue
  - Review error messages
  - Check for breaking changes in updated packages
  - Consider a more conservative version constraint
  - Review package changelogs for migration guides

---

## Completion Checklist

✓ All Python CVEs (Critical/High/Medium) are fixed or justified (Low severity ignored)
✓ `uv lock` generates successfully with no version conflicts
✓ `uv sync` completes without errors
✓ `pytest` passes all tests
✓ Ignored CVEs in `[tool.pip-audit]` are reviewed and cleaned up if fixed
✓ JavaScript/bun vulnerabilities are scanned and resolved (if applicable)
✓ `bun audit` shows no critical/high vulnerabilities
✓ `bun run dev` starts without errors
✓ Frontend tests pass (if applicable)
✓ Commit message documents CVEs fixed and any version constraint changes

---

## Decision Tree: When to Stop Iterating

**For Python (pip audit):**
- Stop when: All CRITICAL and HIGH CVEs are fixed, and all tests pass
- Exception: Document and justify any LOW severity CVEs left unfixed
- Never commit unresolved CRITICAL vulnerabilities

**For JavaScript/Bun:**
- Stop when: All CRITICAL and HIGH vulnerabilities are fixed
- Exception: Can accept LOW severity if no fix is available
- Never commit unresolved CRITICAL vulnerabilities

**Version Conflicts:**
- Iterate max 3-5 times; if no solution, escalate to maintainers
- Consider alternative packages if maintainer is unresponsive

---

## Helpful Context: Files & Commands

| Task | Command/File |
|------|---------|
| Scan Python | `./scripts/hooks/run-pip-audit.sh --progress-spinner off --desc` |
| View ignored CVEs | `pyproject.toml` → `[tool.pip-audit]` `ignore` |
| Lock Python deps | `uv lock` |
| Install Python deps | `uv sync` |
| Run Python tests | `uv run pytest` |
| Scan JavaScript | `bun audit` |
| Update JS deps | `bun update` → `bun install` |
| Run frontend | `bun run dev` |
| Run JS tests | `bun run test` |

---

## Anti-Patterns to Avoid

❌ **Don't** update everything at once; update prioritized vulnerabilities
❌ **Don't** skip tests; always validate after dependency updates
❌ **Don't** ignore CRITICAL vulnerabilities; fix them or mitigate with security controls
❌ **Don't** commit ignores for known fixable CVEs; update to fixed versions
❌ **Don't** manually edit `uv.lock`; let `uv lock` generate it
❌ **Don't** use `pip install` directly; always edit `pyproject.toml`
❌ **Don't** accept all major version bumps; use semver constraints to block breaking changes
❌ **Don't** skip re-auditing; verify fixes worked

---

## Success Criteria

A successful vulnerability remediation:
1. **All CRITICAL vulnerabilities are fixed**
2. **All HIGH vulnerabilities are fixed**
3. **All code tests pass** (Python + JavaScript, if applicable)
4. **All applications start without errors**
5. **Dependency versions are locked in version control** (`uv.lock`, `bun.lock`)
6. **Changes are committed with clear messaging** about fixed CVEs

---

## Example Prompts to Use This Skill

- "Fix all vulnerabilities in the Python dependencies"
- "Run pip audit and npm audit, then update any critical CVEs"
- "Clean up old ignored CVEs in pip-audit and update them if fixes exist"
- "Update all dependencies to latest non-breaking versions"
- "Resolve the version conflict between package-a and package-b"
- "Validate that the app still works after the latest security updates"
