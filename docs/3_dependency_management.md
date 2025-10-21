# 3. Dependency Management

This project uses a **layered dependency management approach** leveraging **pip-tools** with a single source of truth in **`pyproject.toml`**, generating three distinct lockfiles for different deployment scenarios.

---

## 3.1 Dependency Layers Overview

The project organizes dependencies into three distinct layers:

### Core Dependencies
- **Purpose**: Essential runtime requirements needed in all environments
- **Location**: `dependencies` section in `pyproject.toml`
- **Compiled to**: `requirements-slim.txt`
- **Use cases**: Minimal deployments, containers, AWS Lambda functions
- **Examples**: Flask, requests, database drivers, core business logic libraries

### Extra Dependencies
- **Purpose**: Additional production features and optional components
- **Location**: `[project.optional-dependencies].extra` in `pyproject.toml`
- **Compiled to**: `requirements.txt` (core + extra)
- **Use cases**: Full production deployments with all features
- **Examples**: Redis clients, monitoring tools, performance libraries, private packages

### Development Dependencies
- **Purpose**: Development tools, testing frameworks, and code quality tools
- **Location**: `[project.optional-dependencies].dev` in `pyproject.toml`
- **Compiled to**: `requirements-dev.txt` (core + extra + dev)
- **Use cases**: Local development, CI/CD pipelines, testing environments
- **Examples**: pytest, black, mypy, pre-commit, debugging tools

This layered approach ensures:

- **Minimal deployments** with only essential dependencies
- **Flexible production** setups with optional feature control
- **Complete development** environments with all tooling
- **Reproducible builds** with fully pinned, hashed lockfiles
- **Clear separation** between runtime, optional, and tooling packages

---

## 3.2 Using the helper script (`./scripts/dependency.sh`)

The provided script automates compilation and installation across all dependency layers.

```bash
# Install all dependencies (core + extra + dev) - Default for development
./scripts/dependency.sh

# Install core dependencies only - Minimal deployment
./scripts/dependency.sh --slim

# Install production dependencies (core + extra) - Full production deployment
./scripts/dependency.sh --prod

# Install development dependencies only - CI testing environments
./scripts/dependency.sh --dev
```

### Installation Matrix

| Command | Core | Extra | Dev | Use Case |
|---------|------|-------|-----|----------|
| `--slim` | ✅ | ❌ | ❌ | Containers, Lambda, minimal deployments |
| `--prod` | ✅ | ✅ | ❌ | Production servers with all features |
| `--dev` | ❌ | ❌ | ✅ | CI environments, testing only |
| (default) | ✅ | ✅ | ✅ | Local development, complete setup |

### 3.2.1 Under the hood (manual steps)

The script follows a two-phase approach: **compile all lockfiles first**, then **install selected dependencies**.

#### Phase 1: Compile All Lockfiles

1. Activates the project virtual environment (`.venv/bin/activate`).
2. Installs or verifies **pip-tools**.
3. Compiles the **slim lockfile** (core dependencies only):

    ```bash
    pip-compile pyproject.toml --output-file=requirements-slim.txt --generate-hashes --strip-extras
    ```

4. Compiles the **production lockfile** (core + extra):

    ```bash
    pip-compile pyproject.toml --extra=extra --output-file=requirements.txt --generate-hashes --strip-extras
    ```

5. Compiles the **development lockfile** (core + extra + dev):

    ```bash
    pip-compile pyproject.toml --extra=dev --extra=extra --output-file=requirements-dev.txt --generate-hashes --strip-extras
    ```

#### Phase 2: Install Selected Dependencies

6. Installs packages based on the selected option:
   - `--slim`: `pip install --require-hashes -r requirements-slim.txt`
   - `--prod`: `pip install -r requirements.txt`
   - `--dev`: `pip install -r requirements-dev.txt`
   - (default): `pip install -r requirements-dev.txt`

7. Runs `pip check` to validate compatibility.

#### Why Two Phases?

This approach ensures **lockfile consistency** before installation, preventing errors from manually edited or corrupted requirement files.

### 3.2.2 Hash Requirements and Security

By default, the script uses **hash-based verification** for maximum security:

- **`--generate-hashes`** during compilation creates SHA256 hashes for each dependency
- **`--require-hashes`** during installation verifies packages against these hashes

This prevents **supply chain attacks** by ensuring installed packages match exactly what was specified.

#### When to Disable Hash Verification

Some packages **cannot be hashed** due to:
- Private packages from git repositories
- Local development packages (`file://` URLs)
- Packages with dynamic content that changes between installs

**For these cases, you can disable hash verification:**

1. **In `scripts/dependency.sh`**, modify the relevant `pip install` commands:
   - Remove `--require-hashes` from the install command
   - Example: Change `pip install --require-hashes -r requirements-slim.txt` to `pip install -r requirements-slim.txt`

2. **In `scripts/dependency.sh`**, modify the corresponding `pip-compile` commands:
   - Remove `--generate-hashes` from the compile command
   - Example: Change `pip-compile pyproject.toml --output-file=requirements-slim.txt --generate-hashes --strip-extras` to `pip-compile pyproject.toml --output-file=requirements-slim.txt --strip-extras`

**⚠️ Security Warning:** Only disable hashes for packages that genuinely cannot be hashed. Keep hash verification enabled wherever possible to maintain supply chain security.

---

## 3.3 Best Practices and Rules

### Dependency Classification Guidelines

**Core Dependencies** (`dependencies`):
- Database drivers (psycopg2, pymongo)
- Web frameworks (Flask, FastAPI)
- HTTP clients (requests, httpx)
- Essential business logic libraries
- Authentication libraries

**Extra Dependencies** (`[project.optional-dependencies].extra`):
- Caching clients (redis, memcached)
- Message queues (celery, rq)
- Monitoring tools (sentry-sdk, prometheus-client)
- Performance libraries (uvloop, orjson)
- Private/internal packages

**Dev Dependencies** (`[project.optional-dependencies].dev`):
- Testing frameworks (pytest, coverage)
- Code quality tools (black, ruff, mypy)
- Development utilities (pre-commit, rich)
- Documentation tools (sphinx, mkdocs)

### Rules and Best Practices

| ✅ Do This | ❌ Don't Do This |
| --- | --- |
| Declare all deps in `pyproject.toml` only | Scatter deps across multiple files |
| Use `./scripts/dependency.sh` or manual pip-compile | Run `pip install <package>` manually |
| Commit all three lockfiles (`*requirements*.txt`) | Edit lockfiles by hand |
| Choose the right dependency layer | Mix runtime and tooling dependencies |
| Use `--slim` for minimal deployments | Use full lockfile for containers |
| Regenerate lockfiles after changing `pyproject.toml` | Forget to update lockfiles |
| Run `pip check` after installation | Skip integrity verification |

---

## 3.4 Adding New Dependencies

When adding packages, choose the appropriate section in `pyproject.toml`:

```toml
# Core dependencies - Essential runtime requirements
# These go in ALL deployment scenarios
dependencies = [
    "flask>=2.2.0,<3.0.0",  # Web framework
    "requests>=2.28.0",      # HTTP client
    "sqlalchemy>=2.0.0",     # Database ORM
    "pydantic>=2.0.0",       # Data validation
]

[project.optional-dependencies]
# Extra dependencies - Optional production features
# These go in FULL production deployments only
extra = [
    "redis>=4.0.0",          # Caching
    "celery>=5.2.0",         # Task queue
    "sentry-sdk>=1.12.0",    # Error monitoring
    "gunicorn>=20.1.0",      # Production WSGI server
]

# Dev dependencies - Development and testing tools
# These go in DEVELOPMENT environments only
dev = [
    "pytest>=7.0",           # Testing framework
    "black>=22.0",           # Code formatter
    "mypy>=1.0",             # Type checker
    "pre-commit>=2.20.0",    # Git hooks
]
```

### Decision Tree: Where to Put Dependencies

```
Is this package needed for the app to run?
├─ Yes: Is it absolutely essential?
│  ├─ Yes → `dependencies` (core)
│  └─ No → `[project.optional-dependencies].extra`
└─ No: Is it for development/testing?
   └─ Yes → `[project.optional-dependencies].dev`
```

## 3.5 Migration from Older Setups

### From Legacy `requirements.in` Workflow:

1. **Classify dependencies** into core, extra, and dev categories
2. **Move essential runtime deps** into `[project.dependencies]`
3. **Move optional production deps** into `[project.optional-dependencies].extra`
4. **Move tooling dependencies** into `[project.optional-dependencies].dev`
5. **Remove** old `requirements.in` files
6. **Regenerate** all lockfiles:

    ```bash
    ./scripts/dependency.sh
    ```

### From Two-File Setup (requirements.txt + requirements-dev.txt):

1. **Audit existing requirements.txt** - split into core vs extra
2. **Move accordingly** to `dependencies` and `[project.optional-dependencies].extra`
3. **Move dev requirements** to `[project.optional-dependencies].dev`
4. **Regenerate** with the helper script

## 3.6 Troubleshooting

### Common Issues

**Dependency conflicts between layers:**
```bash
pip check  # Identify conflicts
# Review and resolve version constraints in pyproject.toml
```

**Lockfile out of sync:**
```bash
# Force regeneration of all lockfiles
./scripts/dependency.sh
```

**Package in wrong layer:**
- Check if a "dev" package is actually needed at runtime
- Move production packages from "dev" to "core" or "extra"
- Use the decision tree above to classify correctly
