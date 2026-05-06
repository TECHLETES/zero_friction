# CodeQL Workflow: Step-by-step execution

This document details the complete workflow for running CodeQL analysis and orchestrating remediation.

## Step 1: Repository inspection

Inspect the repository structure to determine which languages are applicable.

**Python indicators:**
- `*.py` files
- `pyproject.toml`, `requirements.txt`, `setup.py`, `setup.cfg`, `Pipfile`, `uv.lock`, `poetry.lock`

**JavaScript/TypeScript indicators:**
- `*.js`, `*.jsx`, `*.ts`, `*.tsx` files
- `package.json`, `tsconfig.json`, `vite.config.*`, `next.config.*`, `webpack.config.*`

Only run CodeQL for languages that are actually present.

## Step 2: CodeQL CLI availability check

Before running CodeQL, verify the CLI is available:

```bash
codeql version
```

If CodeQL is not available, stop and report that CodeQL CLI must be installed first. Do not continue with simulated analysis.

## Step 3: Database reuse policy

Prefer reusing existing CodeQL databases where possible.

Expected local database layout:

```
.codeql/
  dbs/
    python/
    javascript-typescript/
  results/
```

Before creating a new database, check whether it already exists:

```bash
test -d .codeql/dbs/python && echo "Python DB exists"
test -d .codeql/dbs/javascript-typescript && echo "JS/TS DB exists"
```

**A database can be reused when:**
- The directory exists
- CodeQL recognizes it
- There is no clear reason to believe it is stale (e.g., source files or dependencies changed significantly)

**Validate a database:**

```bash
codeql database print-baseline .codeql/dbs/python
# or attempt analysis
```

If the database is missing, corrupt, or not recognized, recreate only the affected language database.

## Step 4: Database creation

Create databases only for applicable languages. Do not pass a build command for Python or JavaScript/TypeScript unless the repository clearly requires one.

### Create Python database:

```bash
mkdir -p .codeql/dbs .codeql/results

if [ ! -d ".codeql/dbs/python" ]; then
  codeql database create .codeql/dbs/python \
    --language=python \
    --source-root=.
fi
```

### Create JavaScript/TypeScript database:

```bash
mkdir -p .codeql/dbs .codeql/results

if [ ! -d ".codeql/dbs/javascript-typescript" ]; then
  codeql database create .codeql/dbs/javascript-typescript \
    --language=javascript-typescript \
    --source-root=.
fi
```

## Step 5: CodeQL analysis

Run CodeQL analysis for each applicable language.

### Analyze Python:

```bash
codeql database analyze .codeql/dbs/python \
  codeql/python-queries:codeql-suites/python-security-and-quality.qls \
  --download \
  --format=sarif-latest \
  --output=.codeql/results/codeql-python.sarif
```

### Analyze JavaScript/TypeScript:

```bash
codeql database analyze .codeql/dbs/javascript-typescript \
  codeql/javascript-queries:codeql-suites/javascript-security-and-quality.qls \
  --download \
  --format=sarif-latest \
  --output=.codeql/results/codeql-javascript-typescript.sarif
```

If `security-and-quality` produces excessive noise, rerun with the security-focused suite:

```bash
codeql database analyze .codeql/dbs/python \
  codeql/python-queries:codeql-suites/python-security-extended.qls \
  --download \
  --format=sarif-latest \
  --output=.codeql/results/codeql-python.sarif
```

```bash
codeql database analyze .codeql/dbs/javascript-typescript \
  codeql/javascript-queries:codeql-suites/javascript-security-extended.qls \
  --download \
  --format=sarif-latest \
  --output=.codeql/results/codeql-javascript-typescript.sarif
```

## Step 6: SARIF interpretation

Parse the SARIF output files. Extract:

- Rule ID
- Severity or level
- Message
- File path and line number
- Code flow (if available)
- Whether the issue is actionable
- Whether it may be a false positive

See [sarif-interpretation.md](sarif-interpretation.md) for detailed prioritization and classification logic.

## Step 7: Create remediation plan

Before assigning work, create a concise remediation plan:

- Applicable languages found
- CodeQL databases reused or created
- Number of findings per language
- Findings selected for remediation
- Files likely affected
- Suggested task split for parallel coder agents
- Verification commands to run after changes

Prefer small, isolated tasks. Avoid assigning multiple agents to edit the same file.

## Step 8: Delegate to parallel coder agents

Assign tasks to coder agents only after the plan is clear. Use the template in [../assets/task-delegate-template.md](../assets/task-delegate-template.md).

Do not immediately edit code yourself unless the change is very small and does not benefit from delegation.

## Step 9: Review changes

After coder agents return their work:

1. Inspect all diffs
2. Check whether each task actually addresses the finding
3. Check for regressions or unrelated changes
4. Check whether tests were added or updated where useful
5. Merge or adapt the changes as needed
6. Resolve conflicts between parallel changes

If a coder agent introduces risky or unrelated changes, revert or narrow them.

## Step 10: Reanalysis and verification

After code changes, rerun CodeQL for affected languages.

If source changes are substantial, recreate the affected database first:

### Reanalyze Python (with database recreation):

```bash
rm -rf .codeql/dbs/python

codeql database create .codeql/dbs/python \
  --language=python \
  --source-root=.

codeql database analyze .codeql/dbs/python \
  codeql/python-queries:codeql-suites/python-security-and-quality.qls \
  --download \
  --format=sarif-latest \
  --output=.codeql/results/codeql-python-after.sarif
```

### Reanalyze JavaScript/TypeScript (with database recreation):

```bash
rm -rf .codeql/dbs/javascript-typescript

codeql database create .codeql/dbs/javascript-typescript \
  --language=javascript-typescript \
  --source-root=.

codeql database analyze .codeql/dbs/javascript-typescript \
  codeql/javascript-queries:codeql-suites/javascript-security-and-quality.qls \
  --download \
  --format=sarif-latest \
  --output=.codeql/results/codeql-javascript-typescript-after.sarif
```

**Compare before and after results** to confirm that targeted findings are resolved.

Use language-specific verification commands from [verification-commands.md](verification-commands.md) to ensure the repository still works.

## Step 11: Final report

Generate a concise report using [../assets/report-template.md](../assets/report-template.md).

A fix is complete only when:
- The targeted finding is gone, **or**
- The finding is proven to be a false positive and documented, **or**
- The remaining risk requires explicit human product or security decision
