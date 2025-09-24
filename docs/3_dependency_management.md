# 2. Dependency management

This project uses a modern Python dependency management approach leveraging **pip-tools** with a single source of truth in **`pyproject.toml`**, while still generating fully pinned lockfiles for reproducible installs.

---

## 2.1 Workflow Overview

- **Production dependencies** are declared under `dependencies` in `pyproject.toml` and locked to `requirements.txt` via pip-tools.
- **Development dependencies** are declared under `[project.optional-dependencies].dev` in `pyproject.toml` and locked to `requirements-dev.txt` via pip-tools.

This setup ensures:

- Clear separation of runtime vs. tooling packages
- Fully pinned, reproducible installs using lockfiles
- One declarative manifest (`pyproject.toml`) for all dependencies

---

## 2.2 Using the helper script (`./scripts/dependency.sh`)

The provided script automates compilation and installation of both production and development dependencies.

```bash
# Install both production and development dependencies
./scripts/dependency.sh

# Install only production dependencies:
./scripts/dependency.sh --prod

# Install only development dependencies:
./scripts/dependency.sh --dev
```

### 2.2.1 Under the hood (manual steps)

1. Activates the project virtual environment (`venv/bin/activate`).
2. Installs or verifies **pip-tools**.
3. Compiles the production lockfile from `pyproject.toml`:
    
    ```bash
    pip-compile pyproject.toml --output-file=requirements.txt --generate-hashes
    ```
    
4. Installs production packages:
    
    ```bash
    pip install --require-hashes -r requirements.txt
    ```
    
5. Compiles the development lockfile from the `dev` extras:
    
    ```bash
    pip-compile pyproject.toml --extra=dev --output-file=requirements-dev.txt --generate-hashes
    ```
    
6. Installs development packages:
    
    ```bash
    pip install --require-hashes -r requirements-dev.txt
    ```
    
7. Runs `pip check` to validate compatibility.

---

## 2.3 Best Practices and Rules

| ✅ Do This | ❌ Don't Do This |
| --- | --- |
| Declare all deps in `pyproject.toml` | Scatter deps across multiple files |
| Use `./scripts/dependency.sh` or manual pip-compile commands | Run `pip install <package>` manually |
| Commit both `requirements.txt` and `requirements-dev.txt` lockfiles | Edit lockfiles by hand |
| Pin production installs via `requirements.txt` | Mix runtime and dev dependencies |
| Pin dev installs via `requirements-dev.txt` | Forget to regenerate lockfiles |
| Run `pip check` after installation | Skip integrity verification |

---

## 2.4 Migration from Older Setups

If migrating from a legacy `requirements.in` workflow:

1. **Move all runtime dependencies** into `[project.dependencies]` in `pyproject.toml`.
2. **Move all tooling dependencies** into `[project.optional-dependencies.dev]`.
3. **Remove** the old `requirements.in` file.
4. **Regenerate** lockfiles:
    
    ```bash
    pip-compile pyproject.toml --output-file=requirements.txt --generate-hashes
    pip-compile pyproject.toml --extra=dev --output-file=requirements-dev.txt --generate-hashes
    ```
    
5. **Install** with:
    
    ```bash
    ./scripts/dependency.sh
    ```