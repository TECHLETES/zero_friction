#!/bin/bash
# CodeQL command reference
# Reusable CodeQL commands for database creation, analysis, and reanalysis

set -e

# ============================================================================
# HELPER FUNCTIONS
# ============================================================================

# Check if CodeQL CLI is available
check_codeql() {
    if ! command -v codeql &> /dev/null; then
        echo "Error: CodeQL CLI not found. Install CodeQL and ensure it is on PATH."
        return 1
    fi
    echo "✓ CodeQL CLI found: $(codeql version | head -1)"
}

# Create base directories for CodeQL
init_codeql_dirs() {
    mkdir -p .codeql/dbs
    mkdir -p .codeql/results
    echo "✓ CodeQL directories initialized"
}

# ============================================================================
# DATABASE OPERATIONS
# ============================================================================

# Create Python database
create_python_db() {
    echo "Creating Python CodeQL database..."
    if [ -d ".codeql/dbs/python" ]; then
        echo "⚠ Python database already exists at .codeql/dbs/python"
        return 0
    fi
    init_codeql_dirs
    codeql database create .codeql/dbs/python \
        --language=python \
        --source-root=.
    echo "✓ Python database created at .codeql/dbs/python"
}

# Create JavaScript/TypeScript database
create_js_ts_db() {
    echo "Creating JavaScript/TypeScript CodeQL database..."
    if [ -d ".codeql/dbs/javascript-typescript" ]; then
        echo "⚠ JavaScript/TypeScript database already exists"
        return 0
    fi
    init_codeql_dirs
    codeql database create .codeql/dbs/javascript-typescript \
        --language=javascript-typescript \
        --source-root=.
    echo "✓ JavaScript/TypeScript database created"
}

# Validate a database
validate_db() {
    local db_path="$1"
    if [ -z "$db_path" ]; then
        echo "Usage: validate_db <db_path>"
        return 1
    fi
    if [ ! -d "$db_path" ]; then
        echo "Error: Database not found at $db_path"
        return 1
    fi
    codeql database print-baseline "$db_path"
    echo "✓ Database validated: $db_path"
}

# ============================================================================
# ANALYSIS OPERATIONS
# ============================================================================

# Analyze Python (security and quality)
analyze_python_default() {
    echo "Analyzing Python repository..."
    if [ ! -d ".codeql/dbs/python" ]; then
        echo "Error: Python database not found. Create it first with create_python_db"
        return 1
    fi
    init_codeql_dirs
    codeql database analyze .codeql/dbs/python \
        codeql/python-queries:codeql-suites/python-security-and-quality.qls \
        --download \
        --format=sarif-latest \
        --output=.codeql/results/codeql-python.sarif
    echo "✓ Python analysis complete: .codeql/results/codeql-python.sarif"
}

# Analyze Python (security only, less noise)
analyze_python_security() {
    echo "Analyzing Python repository (security only)..."
    if [ ! -d ".codeql/dbs/python" ]; then
        echo "Error: Python database not found. Create it first with create_python_db"
        return 1
    fi
    init_codeql_dirs
    codeql database analyze .codeql/dbs/python \
        codeql/python-queries:codeql-suites/python-security-extended.qls \
        --download \
        --format=sarif-latest \
        --output=.codeql/results/codeql-python-security.sarif
    echo "✓ Python security analysis complete"
}

# Analyze JavaScript/TypeScript (security and quality)
analyze_js_ts_default() {
    echo "Analyzing JavaScript/TypeScript repository..."
    if [ ! -d ".codeql/dbs/javascript-typescript" ]; then
        echo "Error: JS/TS database not found. Create it first with create_js_ts_db"
        return 1
    fi
    init_codeql_dirs
    codeql database analyze .codeql/dbs/javascript-typescript \
        codeql/javascript-queries:codeql-suites/javascript-security-and-quality.qls \
        --download \
        --format=sarif-latest \
        --output=.codeql/results/codeql-javascript-typescript.sarif
    echo "✓ JavaScript/TypeScript analysis complete"
}

# Analyze JavaScript/TypeScript (security only, less noise)
analyze_js_ts_security() {
    echo "Analyzing JavaScript/TypeScript repository (security only)..."
    if [ ! -d ".codeql/dbs/javascript-typescript" ]; then
        echo "Error: JS/TS database not found. Create it first with create_js_ts_db"
        return 1
    fi
    init_codeql_dirs
    codeql database analyze .codeql/dbs/javascript-typescript \
        codeql/javascript-queries:codeql-suites/javascript-security-extended.qls \
        --download \
        --format=sarif-latest \
        --output=.codeql/results/codeql-javascript-typescript-security.sarif
    echo "✓ JavaScript/TypeScript security analysis complete"
}

# ============================================================================
# REANALYSIS (WITH DATABASE RECREATION)
# ============================================================================

# Reanalyze Python (recreate database)
reanalyze_python() {
    echo "Reanalyzing Python (with database recreation)..."
    rm -rf .codeql/dbs/python
    create_python_db
    analyze_python_default
    echo "✓ Python reanalysis complete: .codeql/results/codeql-python-after.sarif"
    # Rename for comparison
    if [ -f ".codeql/results/codeql-python.sarif" ]; then
        mv .codeql/results/codeql-python.sarif .codeql/results/codeql-python-after.sarif
    fi
}

# Reanalyze JavaScript/TypeScript (recreate database)
reanalyze_js_ts() {
    echo "Reanalyzing JavaScript/TypeScript (with database recreation)..."
    rm -rf .codeql/dbs/javascript-typescript
    create_js_ts_db
    analyze_js_ts_default
    echo "✓ JavaScript/TypeScript reanalysis complete"
    # Rename for comparison
    if [ -f ".codeql/results/codeql-javascript-typescript.sarif" ]; then
        mv .codeql/results/codeql-javascript-typescript.sarif .codeql/results/codeql-javascript-typescript-after.sarif
    fi
}

# ============================================================================
# FULL WORKFLOW
# ============================================================================

# Run complete CodeQL workflow for a language
full_workflow_python() {
    echo "=== Starting Python CodeQL workflow ==="
    check_codeql || return 1
    create_python_db
    analyze_python_default
    echo "=== Python workflow complete ==="
}

full_workflow_js_ts() {
    echo "=== Starting JavaScript/TypeScript CodeQL workflow ==="
    check_codeql || return 1
    create_js_ts_db
    analyze_js_ts_default
    echo "=== JavaScript/TypeScript workflow complete ==="
}

# ============================================================================
# MAIN
# ============================================================================

# If this script is sourced, make functions available
# If executed, run the specified function
if [ "${BASH_SOURCE[0]}" = "${0}" ]; then
    if [ $# -eq 0 ]; then
        echo "Usage: $0 <command>"
        echo ""
        echo "Commands:"
        echo "  check_codeql                    Check CodeQL availability"
        echo "  init_codeql_dirs                Create .codeql directories"
        echo "  create_python_db                Create Python database"
        echo "  create_js_ts_db                 Create JavaScript/TypeScript database"
        echo "  validate_db <path>              Validate a database"
        echo "  analyze_python_default          Analyze Python (security + quality)"
        echo "  analyze_python_security         Analyze Python (security only)"
        echo "  analyze_js_ts_default           Analyze JS/TS (security + quality)"
        echo "  analyze_js_ts_security          Analyze JS/TS (security only)"
        echo "  reanalyze_python                Reanalyze Python (recreate DB)"
        echo "  reanalyze_js_ts                 Reanalyze JS/TS (recreate DB)"
        echo "  full_workflow_python            Complete Python workflow"
        echo "  full_workflow_js_ts             Complete JS/TS workflow"
        exit 1
    fi

    "$@"
fi
