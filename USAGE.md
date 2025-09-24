### 📄 `USAGE.md` - Developer Usage Guide

This guide covers the day-to-day development workflow, including dependency management, code quality checks, and troubleshooting for pre-commit hooks.

## ⚙️ Daily Development Workflow

1.  **Activate Environment**: Navigate to the project directory. If you configured `direnv` during setup, the environment will activate automatically. Otherwise, activate it manually:
    ```bash
    # Linux / macOS
    source venv/bin/activate

    # Windows
    .venv/Scripts/Activate.ps1
    ```

2.  **Code**: Create or modify your Python modules, notebooks, and documentation.

3.  **Run Quality Checks (Optional)**: Before committing, you can run the same checks that the pre-commit hooks use:
    ```bash
    # Format code
    black .

    # Lint for errors and sort imports
    ruff check . --fix

    # Check static types
    mypy .
    ```

4.  **Run Tests**: Ensure all existing functionality still works.
    ```bash
    # Run all tests
    pytest

    # Run tests with a coverage report
    pytest --cov
    ```

5.  **Commit Code**: Stage your files and commit them.
    ```bash
    git add .
    git commit -m "Your descriptive commit message"
    ```
    At this point, the pre-commit hooks will run automatically. See the troubleshooting guide below if any checks fail.

## 🪝 Understanding and Troubleshooting Pre-Commit Hooks

Pre-commit hooks are automated checks that run on your code *before* a commit is finalized. They enforce code quality, consistency, and security, preventing common mistakes from entering the codebase.

If a hook fails, your commit will be aborted. **This is not an error with your code's logic**, but rather an issue with its formatting, style, or safety.

### General Fix Process

1.  **Read the Error**: The hook will print a message explaining what failed.
2.  **Check for Auto-Fixes**: Many hooks (like `black` and `ruff`) will automatically fix the files for you.
3.  **Re-stage the Changes**: If files were modified, you must stage them again with `git add .`.
4.  **Commit Again**: `git commit ...`

---

### Per-Hook Troubleshooting Guide

<details>
<summary><b>Hook: `black`</b> (Code Formatter)</summary>

*   **Purpose**: Ensures all Python code follows the same formatting rules.
*   **Common Error**: `file would be reformatted`
*   **How to Fix**:
    1.  The `black` hook has already reformatted the file(s) for you.
    2.  Stage the changes made by the hook: `git add .`
    3.  Try to commit again. The hook will now pass.
    *To run manually*: `black .`

</details>

<details>
<summary><b>Hook: `ruff`</b> (Linter & Importer Sorter)</summary>

*   **Purpose**: Catches common errors, enforces best practices, and organizes `import` statements.
*   **Common Error**: May show various messages, like `import statements are not sorted` or `line too long`.
*   **How to Fix**:
    1.  Ruff will attempt to auto-fix many issues. Like `black`, you just need to re-stage the changes it made: `git add .`
    2.  For issues it cannot fix automatically, the error message will specify the file, line number, and rule (e.g., `F841: unused variable 'x'`). Edit the file to resolve the issue.
    3.  Try to commit again.
    *To run manually*: `ruff check . --fix`

</details>

<details>
<summary><b>Hook: `mypy`</b> (Static Type Checker)</summary>

*   **Purpose**: Finds type errors in your code (e.g., passing a `string` to a function that expects an `integer`).
*   **Common Error**: `Incompatible types in assignment...` or `Argument 1 to "function" has incompatible type...`
*   **How to Fix**:
    1.  This hook **does not** auto-fix code.
    2.  Read the error message carefully. It will point to the exact file and line where the type mismatch occurred.
    3.  Correct your Python code or type annotations to resolve the error.
    4.  Stage your changes (`git add .`) and try to commit again.
    *To run manually*: `mypy .`

</details>

<details>
<summary><b>Hook: `detect-secrets`</b> (Secret Scanner)</summary>

*   **Purpose**: Prevents you from accidentally committing secrets like API keys or passwords.
*   **Common Error**: `Secrets detected!` followed by a list of findings.
*   **How to Fix**:
    1.  **NEVER IGNORE THIS HOOK** unless you are 100% certain it is a false positive.
    2.  Remove the detected secret from your code. Use the project's secret management system instead (see `docs/1_secret_management.md`).
    3.  **For False Positives**: If the detected string is not a secret, you must update the baseline file to tell `detect-secrets` to ignore it in the future:
        ```bash
        # Re-scan the project and overwrite the baseline
        detect-secrets scan > .secrets.baseline

        # Add the new baseline to your staged files
        git add .secrets.baseline
        ```
    4.  Commit again.

</details>

<details>
<summary><b>Hook: `nbstripout`</b> (Jupyter Notebook Cleaner)</summary>

*   **Purpose**: Removes large output cells from Jupyter Notebooks (`.ipynb` files) to keep the repository clean and small.
*   **Common Error**: `file would be stripped`
*   **How to Fix**:
    1.  This hook works just like `black`. It has already cleaned the notebook file.
    2.  Stage the cleaned notebook: `git add path/to/your/notebook.ipynb`
    3.  Try to commit again.

</details>

## 🏗️ Managing Dependencies

This project uses a hybrid approach where dependencies are declared in `pyproject.toml` and locked to `requirements.txt` files for reproducibility.

*   **To Add a Production Dependency**:
    1.  Add the package name (e.g., `"pandas"`) to the `dependencies` list in `pyproject.toml`.
    2.  Run the dependency script to update the lockfile: `./scripts/dependency.sh`

*   **To Add a Development-Only Dependency**:
    1.  Add the package name (e.g., `"ipykernel"`) to the `dev` list under `[project.optional-dependencies]` in `pyproject.toml`.
    2.  Run the dependency script: `./scripts/dependency.sh`