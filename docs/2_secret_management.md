# 1. Secret management

We use **1Password CLI** (`op`) and **GitHub Secrets** to fetch secrets securely—**no plaintext `.env` files** are ever stored in Git.

## 1.1 Devcontainer Development

Authentication is handled by the development environment when a secret-backed
workflow requires it. Do not put secrets in the repository or create a local
plaintext `.env` file for credentials.

**Environment Variables**
We load secrets on demand from 1Password—no `.env` file. This can be done dynamically using the provided utility function `get_secret` in `utils/secrets.py` . Use it as follows:

    ```python
    import os
    from utils.secrets import get_secret

    # To find the path to your secret go to 1Password Interace > your item > click dropdown next to field > "Copy secret reference"

    # Load once using
    API_KEY = get_secret("op://Shared with all/RAGFLow API Key/credential")

    # Or load and save to use accross the environment:
    get_secret("op://Shared with all/RAGFLow API Key/credential", "API_KEY")
    API_KEY = os.getenv('API_KEY')
    ```

**Pre-commit Hooks**
On each commit, secrets are blocked and notebook outputs cleared:
    - `detect-secrets`
    - `nbstripout`

    These hooks are configured in `.pre-commit-config.yaml` and installed by
    the devcontainer post-create step. Run `uv run pre-commit run --all-files`
    to check the repository manually.


---

### Secret-Specific Behavior

The devcontainer image includes the 1Password CLI (`op`), but it does not
authenticate automatically:

- **If `op` is available** in the container, use `get_secret()` normally:
  ```python
  from utils.secrets import get_secret

  api_key = get_secret("op://Vault/Item/field")
  ```

- **If `op` is not authenticated**, `get_secret()` will fail because it shells
  out to `op read ...`. For development, guard secret-backed code with an
  explicit environment-variable path instead of assuming the container is
  authenticated:
  ```python
  import os
  import shutil

  from utils.secrets import get_secret

  # Fall back to an environment variable when 1Password is unavailable.
  if shutil.which("op") and os.getenv("OP_SERVICE_ACCOUNT_TOKEN"):
      api_key = get_secret("op://Vault/Item/field")
  else:
      api_key = os.getenv("API_KEY_DEV")
  ```

The post-create script reports whether `op` is available. It does not
authenticate it or export an `OP_AVAILABLE` variable.

### Setup, Customization & Troubleshooting

For general devcontainer setup, prerequisites, Windows/WSL guidance, and troubleshooting, see **[docs/7_devcontainers.md](./7_devcontainers.md)**.

### Tests with Secrets

Unit tests that require secrets should mock `get_secret()` or use environment variables:

```python
from unittest.mock import patch

def test_with_mock_secret() -> None:
    with patch("utils.secrets.get_secret", return_value="mock-secret"):
        result = my_function_that_needs_secret()
        assert result is not None
```

---

## 1.3 CI / GitHub Actions

For CI, we **do not** use 1Password directly. Instead, define your secrets in **GitHub Settings > Secrets**:

- `API_KEY`
- `DB_PASSWORD`

Then in your workflow (`.github/workflows/ci.yml`):

```yaml
name: CI

on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Set up Python
        uses: actions/setup-python@v6
        with:
          python-version: '3.12'

      - name: Install uv
        uses: astral-sh/setup-uv@v7
        with:
          enable-cache: true
          cache-dependency-glob: "uv.lock"

      - name: Install dependencies
        run: uv sync

      - name: Run tests
        env:
          API_KEY: ${{ secrets.API_KEY }}
          DB_PASSWORD: ${{ secrets.DB_PASSWORD }}
        run: uv run pytest

```

This way, CI runners receive secrets securely from GitHub and never see 1Password directly.

---

## 1.4 Rotating & Auditing

- **Rotate** immediately in 1Password or GitHub when a secret is compromised. Follow this action plan:

    [Compromised secret action plan](https://www.notion.so/Compromised-secret-action-plan-24517d03144d805eba09e65cd5fe6a49?pvs=21)

- **Scan and audit** with `scripts/hooks/run-detect-secrets.sh` after updates.
- Maintain a clear **playbook** in `SECURITY.md` for incident response.
