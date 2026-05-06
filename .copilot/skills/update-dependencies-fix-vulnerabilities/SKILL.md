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

The skill uses a four-phase approach:
1. **Preparation Phase**: Set up Git branch for changes
2. **Scan Phase**: Identify all vulnerabilities
3. **Resolution Phase**: Update versions and resolve conflicts
4. **Validation Phase**: Ensure application stability and create PR

---

## Phase 0: Preparation - Git Branch Setup

### Step 0a: Determine Base Branch

Identify the appropriate base branch for the security updates:

```bash
# Check if staging branch exists
git branch -r | grep -E 'origin/staging|staging'

# If staging exists, use it; otherwise use main or master
if git show-ref --quiet refs/heads/staging; then
  BASE_BRANCH="staging"
elif git show-ref --quiet refs/heads/main; then
  BASE_BRANCH="main"
else
  BASE_BRANCH="master"
fi
```

**Decision Point**: Which branch will be the base?
- **staging**: Recommended for staged deployments
- **main/master**: Use if staging doesn't exist
- Document the chosen base branch

### Step 0b: Create Feature Branch

Create a new branch with a descriptive name for security updates:

```bash
# Switch to base branch and pull latest
git checkout $BASE_BRANCH
git pull origin $BASE_BRANCH

# Create feature branch
git checkout -b security-updates-dependencies
```

**Branch naming convention**: `security-updates-dependencies` or `security/dependencies-update-YYYY-MM-DD`

### Step 0c: Verify Branch Creation

```bash
git branch --show-current
# Should output: security-updates-dependencies
```

**Decision Point**: Is the branch created and checked out?
- **YES**: Continue to Phase 1 (Scan)
- **NO**: Review Git errors and resolve before proceeding

---

## Phase 1: Python Dependency Scan

### Step 1a: Run pip-audit Scanner

Use the `run-pip-audit.sh` helper script to scan for Python vulnerabilities. This script automatically applies CVE exclusions from `pyproject.toml` `[tool.pip-audit]`.

```bash
./scripts/hooks/run-pip-audit.sh
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


## Security Update Summary

### Major / Breaking Changes
<!-- List any major version bumps or API-breaking changes here. If none, state "None". -->
- **package-name**: Updated from 1.x to 2.x. (Describe breaking change or required code updates)

### Python Vulnerabilities Fixed
- **pypdf**: Updated from 6.10.0 → 6.10.2
  - Fixed: GHSA-jj6c-8h6c-hppx (DoS via malformed PDFs)
  - Fixed: GHSA-4pxv-j86v-mhcw (DoS via incremental mode)
  - Fixed: GHSA-7gw9-cf7v-778f (Memory exhaustion via FlateDecode)
  - Fixed: GHSA-x284-j5p8-9c5p (Memory exhaustion via image FlateDecode)

- **langsmith**: Updated from 0.7.30 → 0.7.31
  - Fixed: GHSA-rr7j-v2q5-chgv (Output redaction bypass in streaming)

- **langchain-text-splitters**: Updated from 1.1.1 → 1.1.2
  - Fixed: GHSA-fv5p-p927-qmxr (SSRF via redirect validation bypass)

- **langchain-core**: Updated from 1.2.28 → 1.2.31 (transitive dependency)

### Python Vulnerabilities Not Fixed / Ignored

- **CVE-2026-1703** (pip): Ignored - Low impact path traversal in wheel extraction
  - Status: Pre-existing ignore in pyproject.toml
  - Reason: Applies only to pip's internal wheel extraction

- **CVE-2026-2473** (Google Cloud Platform): Ignored - Service-specific issue
  - Status: Pre-existing ignore in pyproject.toml
  - Reason: Does not affect RAGFlow core functionality

- **CVE-2025-69872** (diskcache): Ignored - Maintainer inactive
  - Status: Pre-existing ignore in pyproject.toml
  - Reason: No fix available; low security impact

### JavaScript Vulnerabilities

**Status**: 19+ vulnerabilities identified in `bun audit`

**CRITICAL/HIGH vulnerabilities analyzed**:
- **immer** (^11.1.4): Already at safe version (above vulnerable <9.0.6 range)
- **dompurify** (^3.4.0): Already at safe version (above vulnerable <3.3.2 range)
- **Other vulnerabilities**: Primarily in transitive build/dev dependencies (webpack, eslint, jest, UMI framework)

**Why some remain unfixed**:
1. **Transitive dev dependencies**: Build-time only, not runtime exposure
   - webpack, eslint, jest, typescript build tools
   - Require upstream updates from UMI framework maintainers

2. **No newer versions available**:
   - xlsx: Latest 0.18.5 (no 0.19.3+ version exists on npm)

3. **Pending upstream fixes**:
   - path-to-regexp, minimatch, lodash.template, underscore
   - Used by framework; awaiting UMI / design system updates

**Recommendation**: Monitor bun audit output in CI/CD. Most vulnerabilities will resolve when UMI 5.x or Ant Design 6.5+ updates are adopted.

### Validation Results

✅ **Python**:
- pip-audit clean: "No known vulnerabilities found"
- All imports successful
- No breaking changes detected

✅ **JavaScript**:
- bun install successful
- Dev dependencies installed
- Build pipeline intact

### Testing

- [x] Python imports validated
- [x] uv lock/sync successful
- [x] bun install successful
- [x] No build errors observed

### Files Changed
- `pyproject.toml` - Updated pypdf, added langchain-text-splitters and langsmith
- `uv.lock` - Regenerated with fixed dependency versions
- `web/package.json` - (if any JavaScript updates applied)
- `web/bun.lock` - (if any JavaScript updates applied)

### Related Issues
- Security scanning / dependency audit
- CVE remediation

### Checklist
- [x] All CRITICAL Python CVEs fixed
- [x] All HIGH Python CVEs fixed
- [x] No new CRITICAL JavaScript vulnerabilities introduced
- [x] Tests pass (Python)
- [x] Build pipeline verified (JavaScript)
- [x] Lock files updated and committed

---

## Completion Checklist

✓ Base branch identified (staging/main/master)
✓ Feature branch `security-updates-dependencies` created and checked out
✓ All Python CVEs (Critical/High/Medium) are fixed or justified (Low severity ignored)
✓ `uv lock` generates successfully with no version conflicts
✓ `uv sync` completes without errors
✓ `pytest` passes all tests
✓ Ignored CVEs in `[tool.pip-audit]` are reviewed and documented
✓ JavaScript/bun vulnerabilities are scanned and analyzed
✓ All CRITICAL/HIGH JavaScript vulnerabilities checked (resolved or documented)
✓ `bun run dev` starts without errors
✓ Frontend tests pass (if applicable)

---

## Decision Tree: When to Stop Iterating

**For Git Workflow**:
- Base branch: Use staging if it exists, otherwise main, otherwise master
- Branch creation: Always create `security-updates-dependencies` branch

**For Python (pip audit):**
- Stop when: All CRITICAL and HIGH CVEs are fixed, and all tests pass
- Exception: Document and justify any LOW severity CVEs left unfixed
- Document reasoning for any vulnerabilities that cannot be fixed

**For JavaScript/Bun:**
- Stop when: All CRITICAL and HIGH vulnerabilities are analyzed
- If resolved: Great!
- If not resolved: Document thoroughly WHY they remain (transitive deps, upstream waiting, etc.)
- Never commit unresolved CRITICAL vulnerabilities without clear mitigation path
- Document transitive/dev-only vulnerabilities for transparency

**Version Conflicts:**
- Iterate max 3-5 times; if no solution, escalate to maintainers
- Consider alternative packages if maintainer is unresponsive

---

## Helpful Context: Files & Commands

| Task | Command/File |
|------|---------|
| Detect base branch | `git branch -r \| grep -E 'origin/staging\|origin/main\|origin/master'` |
| Create feature branch | `git checkout -b security-updates-dependencies` |
| Scan Python | `./scripts/hooks/run-pip-audit.sh` |
| View ignored CVEs | `pyproject.toml` → `[tool.pip-audit]` `ignore` |
| Lock Python deps | `uv lock` |
| Install Python deps | `uv sync` |
| Run Python tests | `uv run pytest` |
| Scan JavaScript | `bun audit` |
| Update JS deps | `bun update` → `bun install` |
| Run frontend | `bun run dev` |
| Run JS tests | `bun run test` |
| View branch status | `git status` |

---

## Anti-Patterns to Avoid

❌ **Don't** work directly on staging/main/master branches; always use feature branch
❌ **Don't** forget to pull latest before creating feature branch
❌ **Don't** force-push the feature branch without good reason
❌ **Don't** create commits & PR; commits and PR are done by user, to keep human in the loop
❌ **Don't** forget to document why vulnerabilities were NOT fixed
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
1. **Git workflow completed**: Feature branch created and up to date
2. **All CRITICAL vulnerabilities are fixed**
3. **All HIGH vulnerabilities are fixed or well-documented**
4. **All code tests pass** (Python + JavaScript, if applicable)
5. **All applications start without errors**
6. **Dependency versions are locked in version control** (`uv.lock`, `bun.lock`)
8. **Documentation complete**: All decisions, conflicts, and resolutions explained

---

## Example Prompts to Use This Skill

- "Fix all vulnerabilities in the Python dependencies"
- "Run security audits on all dependencies and update critical CVEs"
- "Scan for CVEs, fix what we can"
- "Update dependencies to fix security vulnerabilities with automated branch"
- "Clean up old ignored CVEs and update them if fixes exist"
- "Security audit: scan Python and JavaScript, fix vulnerabilities"
- "Create feature branch for security updates, fix dependencies"
- "Resolve the version conflict between package-a and package-b"
- "Validate that the app still works after security updates"
