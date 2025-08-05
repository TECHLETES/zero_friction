# 1. Secret management

We use **1Password CLI** (`op`) and **GitHub Secrets** to fetch secrets securely—**no plaintext `.env` files** are ever stored in Git.

## 1.1 Local Development

1. **Authentication for 1Password is handled automatically**
    
    Once per session you will be asked to authenticate through the 1Password Interface. **Never** log in manually through the cli. This will overwrite the connection.
    
2. **Enable Direnv when changing .envrc**
Whenever you make any changes to `.envrc` always allow Direnv to load environment variables automatically:
    
    ```bash
    direnv allow
    ```
    
3. **Environment Variables**
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
    
    <aside>
    ⚠️
    
    **Important: When you edit the `.envrc`, make sure to run `direnv allow` to allow the changes to take effect**
    
    </aside>
    
4. **Pre-commit Hooks**
On each commit, secrets are blocked and notebook outputs cleared:
    - `detect-secrets`
    - `nbstripout`
    
    These hooks are configured in `.pre-commit-config.yaml` and installed via:
    
    ```bash
    pre-commit install
    pre-commit autoupdate
    ```
    

---

## 1.2 CI / GitHub Actions

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
        uses: actions/setup-python@v4
        with:
          python-version: '3.12'

      - name: Install dependencies
        run: pip install -r requirements.txt

      - name: Run tests
        env:
          API_KEY: ${{ secrets.API_KEY }}
          DB_PASSWORD: ${{ secrets.DB_PASSWORD }}
        run: pytest

```

This way, CI runners receive secrets securely from GitHub and never see 1Password directly.

---

## 1.3 Rotating & Auditing

- **Rotate** immediately in 1Password or GitHub when a secret is compromised. Follow this action plan:
    
    [Compromised secret action plan](https://www.notion.so/Compromised-secret-action-plan-24517d03144d805eba09e65cd5fe6a49?pvs=21)
    
- **Audit** with `detect-secrets scan > .secrets.baseline` after updates.
- Maintain a clear **playbook** in `SECURITY.md` for incident response.