# 3. Dependency Management with uv

This project uses **uv** for fast, reliable dependency management with a single source of truth in **`pyproject.toml`**. uv generates a single, simple lockfile (`uv.lock`) for reproducible builds across all environments.

Run every command in this guide from the VS Code terminal attached to the
devcontainer. The container already provides `uv` and the project Python
environment.

---

## 3.1 Dependency Layers Overview

The project organizes dependencies into three distinct layers, all defined in `pyproject.toml`:

### Core Dependencies
- **Purpose**: Essential runtime requirements needed for the application to function
- **Location**: `dependencies` section in `pyproject.toml`
- **Installed with**: Always included in all `uv sync` commands
- **Use cases**: Production deployments, containers, minimal environments
- **Examples**: Flask, requests, database drivers, core business logic libraries

### Extra Dependencies
- **Purpose**: Additional production features and optional components
- **Location**: `[dependency-groups].extra` in `pyproject.toml` (PEP 735 format)
- **Installed with**: `uv sync` (default includes in dev) or explicitly with `uv sync --group extra`
- **Skip with**: `uv sync --no-group extra`
- **Use cases**: Full production deployments with optional features
- **Examples**: Redis clients, monitoring tools, performance libraries, private packages

### Development Dependencies
- **Purpose**: Development tools, testing frameworks, and code quality tools
- **Location**: `[dependency-groups].dev` in `pyproject.toml` (PEP 735 format)
- **Installed with**: `uv sync` (default includes during development)
- **Skip with**: `uv sync --no-group dev`
- **Use cases**: Local development, CI/CD pipelines, testing environments
- **Examples**: pytest, black, mypy, pre-commit, ruff

### Dependency Structure in pyproject.toml

Using **PEP 735 format** with `[dependency-groups]`:

```toml
# Core dependencies (always installed)
dependencies = [
    "flask>=3.1.0,<4.0.0",
    "requests>=2.32.0,<3.0.0",
    "sqlalchemy>=2.0.0,<3.0.0",
]

# Optional dependency groups (managed with --group flags)
[dependency-groups]

# Additional production features (optional)
extra = [
    "redis>=4.0.0,<5.0.0",
    "celery>=5.2.0,<6.0.0",
]

# Development tools (development only)
dev = [
    "pytest>=9.0.0,<10.0.0",
    "black>=25.12.0,<26.0.0",
    "mypy>=1.19.0,<2.0.0",
    "ruff>=0.14.0,<1.0.0",
]
```

This layered approach ensures:

- **Clear separation** between runtime, optional, and tooling packages
- **Flexible deployments** with control over which packages are installed
- **Reproducible builds** with single-file lockfile (`uv.lock`)
- **Fast dependency resolution** with uv's optimized algorithm
- **Version safety** with pinned versions in the lock file

### Installation Matrix

| Scenario | Command | Core | Extra | Dev | Use Case |
|----------|---------|------|-------|-----|----------|
| Development (all groups) | `uv sync` | ✅ | ✅ | ✅ | Full environment for coding |
| Production (core + extra) | `uv sync --no-group dev` | ✅ | ✅ | ❌ | Production servers |
| Production minimal (core only) | `uv sync --no-group dev --no-group extra` | ✅ | ❌ | ❌ | Minimal deployments |
| Development without extra | `uv sync --no-group extra` | ✅ | ❌ | ✅ | Local development, no optional features |
| Only extra (unusual) | `uv sync --only-group extra` | ❌ | ✅ | ❌ | Feature testing only |
| Only dev (testing) | `uv sync --only-group dev` | ❌ | ❌ | ✅ | CI/test environments without core |

---

## 3.2 Understanding Dependency Groups (PEP 735)

This project uses **PEP 735 format** with `[dependency-groups]` for modern dependency management. This is the standard supported by uv and enables flexible grouping of optional dependencies.

### What Are Dependency Groups?

Dependency groups are named collections of packages in the `[dependency-groups]` section. Unlike the older `[project.optional-dependencies]` format, PEP 735 groups are:
- **Easier to manage** - Clear syntax in a single section
- **Better supported** - Native support in modern tools like uv
- **More flexible** - Arbitrary naming and multiple groups
- **Lockfile-aware** - All groups locked together in `uv.lock`

### Pre-defined Groups in This Project

| Group | Purpose | Default Included | When to Use |
|-------|---------|------------------|------------|
| `extra` | Optional production features | ✅ in dev, ❌ in prod | Feature flags, optional integrations |
| `dev` | Development and testing tools | ✅ in dev mode | Local development, CI/CD |

### Adding Custom Groups

You can add additional groups as needed:

```toml
[dependency-groups]

# Standard groups
extra = ["redis>=4.0.0,<5.0.0"]
dev = ["pytest>=9.0.0,<10.0.0"]

# Custom groups (examples)
docs = [          # Documentation generation
    "sphinx>=7.0.0,<8.0.0",
    "sphinx-rtd-theme>=2.0.0,<3.0.0",
]

test = [          # Just testing, minimal tooling
    "pytest>=9.0.0,<10.0.0",
    "pytest-cov>=7.0.0,<8.0.0",
]

perf = [          # Performance optimization tools
    "py-spy>=0.3.14,<1.0.0",
    "memory-profiler>=0.61.0,<1.0.0",
]
```

Then install with:
```bash
uv sync --group docs         # Include docs group with core
uv sync --group perf --group test  # Multiple custom groups
uv sync --only-group docs    # Only docs (advanced)
```

---

## 3.3 Version Constraints and Pinning

All dependencies use **semantic versioning** with flexible constraints:

```toml
# Format: >=CURRENT.Y.Z,<NEXT_MAJOR.0.0
dependencies = [
    "flask>=3.1.0,<4.0.0",      # Allows 3.1.x, 3.2.x, 3.3.x, etc.
    "requests>=2.32.0,<3.0.0",  # Allows 2.32.x, 2.33.x, etc.
    "sqlalchemy>=2.0.0,<3.0.0", # Allows 2.0.x, 2.1.x, etc.
]
```

### Version Constraint Strategy

- **`>=X.Y.Z`**: Minimum compatible version (includes patches and minor updates)
- **`<X+1.0.0`**: Maximum version (prevents major breaking changes)
- **Why this approach**:
  - ✅ Allows security patches and bug fixes (patch updates)
  - ✅ Allows new features (minor updates)
  - ❌ Prevents major breaking changes
  - 🔒 Ensures stability while staying current

### Examples of Good vs Bad Constraints

| ❌ Bad | ✅ Good | Why |
|--------|---------|-----|
| `flask` | `flask>=3.1.0,<4.0.0` | Explicit version range for reproducibility |
| `"flask==3.1.2"` | `flask>=3.1.0,<4.0.0` | Allows patches without manual updates |
| `"flask>=3.1.0"` | `flask>=3.1.0,<4.0.0` | Prevents breaking major updates |
| `"flask>=2.0.0"` | `flask>=3.1.0,<4.0.0` | Too loose, allows old versions |

---

## 3.4 Working with uv

### First-Time Setup

The devcontainer image already provides `uv`. When the container is first
opened, `.devcontainer/post-create.sh` runs `uv sync` and creates the project
`.venv` from `uv.lock`. No host installation or manual environment activation
is required.

### Day-to-Day Workflow

```bash
# Syncing existing dependencies (most common operation)
# Downloads and installs packages according to uv.lock
uv sync

# Adding a new dependency
# 1. Edit pyproject.toml and add the package with version constraints
# 2. Update the lock file
uv lock
# 3. Install the new packages
uv sync
```

### Update Workflows

#### Safe Updates (patch + minor versions)

```bash
# Updates uv.lock with newest compatible patch/minor versions
# Example: 3.1.2 → 3.2.5 (but not 4.0.0)
uv lock
uv sync
```

#### Major Version Updates

```bash
# Updates uv.lock allowing major version changes
# Example: 3.x.x → 4.0.0 (may have breaking changes!)
# Use this carefully and test thoroughly
uv lock --upgrade
uv sync
```

#### Updating a Specific Package

```bash
# Edit pyproject.toml:
# Change: "requests>=2.32.0,<3.0.0"
# To:     "requests>=2.35.0,<3.0.0"

# Then lock and sync
uv lock
uv sync
```

#### Installing Additional Groups

If `extra` dependencies are optional:

```bash
# Install core + extra but not dev
uv sync --extra extra

# Install specific groups
uv sync --group dev --group extra
```

---

## 3.5 The Lock File (`uv.lock`)

The `uv.lock` file is the source of truth for reproducible builds.

### What It Contains

```
# Human-readable format showing all transitive dependencies
# Each package with pinned version, hashes, and metadata
[[package]]
name = "requests"
version = "2.32.5"
requires-python = ">=3.7"

[[package]]
name = "urllib3"
version = "2.6.3"
requires-python = ">=2.7,!=3.0.*,!=3.1.*"
```

### Best Practices

- ✅ **Always commit `uv.lock`** to version control
- ✅ **Keep `uv.lock` in sync** with `pyproject.toml`
- ✅ **Review lock file changes** in pull requests for security updates
- ❌ **Never edit `uv.lock` manually** - always use `uv lock` command
- ❌ **Don't add git patterns** that exclude `uv.lock`

### Why Commit the Lock File?

The lock file ensures:
- All team members use identical dependency versions
- CI/CD deployments are reproducible
- No surprise dependency differences between environments
- Security issues can be tracked and resolved consistently

---

## 3.6 Adding New Dependencies

### Step-by-Step Process

**1. Determine the right layer:**
- Is it needed for the app to run? → `dependencies`
- Is it optional production feature? → `[dependency-groups].extra`
- Is it development/testing tool? → `[dependency-groups].dev`

**2. Edit `pyproject.toml`:**

For core dependencies:
```toml
dependencies = [
    # Existing dependencies...
    "newvalidator>=1.5.0,<2.0.0",  # Add with version constraint
]
```

For optional groups:
```toml
[dependency-groups]

extra = [
    # Existing extra dependencies...
    "redis>=4.0.0,<5.0.0",  # Add new optional dependency
]

dev = [
    # Existing dev dependencies...
    "pytest-mock>=3.10.0,<4.0.0",  # Add new dev dependency
]
```

**3. Lock and sync:**

```bash
uv lock      # Updates uv.lock with the new package and its dependencies
uv sync      # Installs the new package(s)
```

### Classification Decision Tree

```
Is this package necessary for the app to function?
├─ Yes: Is it absolutely core?
│  ├─ Yes → dependencies (core)
│  └─ No → [dependency-groups].extra
└─ No: Is it for development/testing/tooling?
   └─ Yes → [dependency-groups].dev
```

### Examples

**Core Dependencies** (needed for production):
- `flask` - Web framework
- `requests` - HTTP client
- `sqlalchemy` - ORM
- `pydantic` - Data validation
- `psycopg2-binary` - PostgreSQL driver

**Extra Dependencies** (optional features):
- `redis` - Caching
- `celery` - Task queue
- `sentry-sdk` - Error monitoring
- `prometheus-client` - Metrics

**Dev Dependencies** (development only):
- `pytest` - Testing
- `black` - Code formatter
- `mypy` - Type checker
- `ruff` - Linter
- `pre-commit` - Git hooks

---

## 3.7 Common Workflows

### Checking for Updates

```bash
# See what updates are available without installing
# (Review changes and test in a branch first)
uv lock --dry-run

# Or just check what uv would update
uv pip list --outdated
```

### Installing for Different Scenarios

```bash
# Development setup (all groups - default)
uv sync

# Production server (core + extra, no dev)
uv sync --no-group dev

# Minimal production (core only, no extra, no dev)
uv sync --no-group dev --no-group extra

# Development without optional features (core + dev, no extra)
uv sync --no-group extra

# Only a specific group (advanced)
uv sync --only-group dev        # dev only (no core dependencies!)
uv sync --only-group extra      # extra only (no core dependencies!)

# Multiple specific groups
uv sync --group dev --group extra   # Combined with core automatically
```

### Understanding Group Flags

| Flag | Behavior |
|------|----------|
| `uv sync` | Includes all: core + extra + dev |
| `--no-group dev` | Excludes: removes dev group |
| `--no-group extra` | Excludes: removes extra group |
| `--only-group dev` | Includes ONLY: dev group (⚠️ no core!) |
| `--group extra` | Includes: core + this group |

### Cleaning Up

```bash
# Refresh the project environment inside the devcontainer
uv sync
```

### Troubleshooting Dependency Conflicts

```bash
# If you get dependency conflicts, inspect what's installed
pip list

# Check if there are any conflicts
pip check

# Review the conflict in pyproject.toml and adjust version constraints
# Then retry:
uv lock
uv sync
```

---

## 3.8 Migration from Requirements Files

If you're coming from an older pip-tools setup with `requirements.txt` files:

1. **Audit dependencies** - Identify which packages are core vs extra vs dev
2. **Update `pyproject.toml`** with proper layer assignments using **PEP 735**:
   ```toml
   # Core runtime (always installed)
   dependencies = [
       "flask>=3.1.0,<4.0.0",
       # ... more core packages
   ]

   # Optional dependency groups
   [dependency-groups]

   # Optional features (install with --group extra)
   extra = [
       "redis>=4.0.0,<5.0.0",
       # ... more extra packages
   ]

   # Development tools (install by default, skip with --no-group dev)
   dev = [
       "pytest>=9.0.0,<10.0.0",
       # ... more dev packages
   ]
   ```
3. **Lock everything** with `uv lock`
4. **Sync** with `uv sync` (or `uv sync --no-group dev` for production)
5. **Delete old requirement files** (they're no longer needed)

---

## 3.9 Running Commands with uv

You can run Python scripts and commands without explicitly activating the virtual environment:

```bash
# Run a Python script
uv run python script.py

# Run pytest
uv run pytest

# Run mypy
uv run mypy .

# Run black
uv run black .

# Run ruff
uv run ruff check . --fix

# Run any command with the virtual environment active
uv run <any-command>
```

The devcontainer and VS Code are configured to use `.venv` automatically. Keep
using `uv run` so commands always use the locked project environment.

---

## 3.10 Best Practices Summary

### Do ✅

- Declare all dependencies in `pyproject.toml` only
- Use semantic versioning: `>=X.Y.Z,<X+1.0.0`
- Run `uv lock` after updating `pyproject.toml`
- Run `uv sync` to install locked versions
- Commit `uv.lock` to version control
- Review dependency changes in pull requests
- Use different sections for core/extra/dev packages
- Pin to maximum major version to prevent breaking changes

### Don't ❌

- Edit `uv.lock` manually (use `uv lock` command)
- Add packages to `pyproject.toml`, then run `uv lock` and `uv sync` in the
  devcontainer
- Use exact version pinning (`==3.1.2`) - use ranges instead
- Forget to run `uv lock` after editing `pyproject.toml`
- Exclude `uv.lock` from git (it should be committed)
- Mix dependencies from different sources without documentation
- Ignore dependency vulnerability warnings

---

## 3.11 Additional Resources

- **uv Documentation**: https://docs.astral.sh/uv/
- **uv Lock File Format**: https://docs.astral.sh/uv/concepts/lock-files/
- **Python Packaging Guides**: https://packaging.python.org/
- **Semantic Versioning**: https://semver.org/
