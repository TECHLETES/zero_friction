# ZF-SDK – Unified SDK for Zero Friction APIs

This repository provides a **unified Python SDK** for interacting with the full suite of **Zero Friction** APIs.

The SDK is structured into:
- **Modular API clients** inside the `sdk/` folder (auto-generated from OpenAPI specs)
- A **unified meta-package** `zero_friction/` that depends on all clients and includes custom logic, wrappers, and shared configuration

You can install the entire SDK with a **single command**, while still using each client independently.

## 📁 Repository structure

```
ZF-SDK/
├── sdk/                        # Contains 8 modular API client packages
│   ├── attachments_client/     # Project folder
│   │   ├── setup.py
│   │   └── attachments_client/ # Python module
│   │       └── __init__.py
│   ├── billing_client/
│   │   ├── setup.py
│   │   └── billing_client/
│   │       └── __init__.py
│   ├── communication_client/
│   │   ├── setup.py
│   │   └── communication_client/
│   │       └── __init__.py
│   ├── configuration_client/
│   │   ├── setup.py
│   │   └── configuration_client/
│   │       └── __init__.py
│   ├── forecasting_client/
│   │   ├── setup.py
│   │   └── forecasting_client/
│   │       └── __init__.py
│   ├── masterdata_client/
│   │   ├── setup.py
│   │   └── masterdata_client/
│   │       └── __init__.py
│   ├── metering_client/
│   │   ├── setup.py
│   │   └── metering_client/
│   │       └── __init__.py
│   └── regionalregulations_client/
│       ├── setup.py
│       └── regionalregulations_client/
│           └── __init__.py
├── zero_friction/                  # Unified SDK package
│   └── core/              
│       ├── auth.py
│       ├── config.py
│       ├── sdk_client.py
│       ├── sdk_exceptions.py
│       └── sdk_utils.py
```

---

## 📦 Installation

### ✅ Option 1: Install directly from GitHub (recommended)

Install everything — all SDK clients + the unified `zero_friction` package — with a single line:

```bash
pip install "git+https://github.com/TECHLETES/ZF-SDK.git@main"
```

This automatically installs:

- The `zero_friction` package  
- All 8 client packages under `sdk/`  
- Core dependencies (`requests`, `pandas`, `python-dotenv`, etc.)  

---

## 🧑‍💻 Option 2: Local editable install (for development)

Clone the repo and install locally:

```bash
git clone https://github.com/TECHLETES/ZF-SDK.git
cd ZF-SDK
pip install -r requirements.dev.txt
```

This installs all clients and `zero_friction` in editable mode so changes are picked up immediately.

## 🧩 Using the SDK

Here’s a minimal working example to test that everything is correctly installed:

```python
from zero_friction.auth import get_oauth_token
from zero_friction.sdk_client import SDKClient
from zero_friction.config import ZeroFrictionConfig

# Get OAuth token from environment
token = get_oauth_token()

# Initialize SDK
sdk = SDKClient(oauth_token=token)
config = ZeroFrictionConfig()

# Example: Get contract by UUID
contract = sdk.masterdata_client.contracts_api.get_contracts_contractuuid(
    contractuuid="fc77b9c6-42bc-4fe7-b0a2-0f0309449a98",
    **config.as_kwargs()
)
print(contract)

# Example: Get customer by account number
customer = sdk.masterdata_client.customers_api.get_customer_by_account_number(
    customer_account_number="20019188",
    **config.as_kwargs()
)
print(customer.data.to_dict())
```

## 🔐 Authentication

The SDK loads credentials automatically from a `.env` file in your project root.  
Add at least the following variables:

ZF_API_KEY=
ZF_TENANT_ID=
ZF_ORG_ID=
ZF_CLIENT_ID=
ZF_CLIENT_SECRET=
ZF_USERNAME=
ZF_PASSWORD=

---

## ⚙️ Development setup (for contributors)

Clone the repository and create a feature branch:

```bash
git clone https://github.com/TECHLETES/ZF-SDK.git
cd ZF-SDK
git checkout -b feature/my-feature
```

Add or update your logic in:

- `zero_friction/wrappers/`
- `zero_friction/business_logic/`

Run tests or examples to validate your changes.

---

## ☁️ Using in CI/CD or cloud deployments

When installing from a **private GitHub repo**, use a fine-grained Personal Access Token (PAT):

```bash
pip install "git+https://${GITHUB_PAT}@github.com/TECHLETES/ZF-SDK.git@main"
```

### To generate a PAT:
1. Go to **GitHub → Settings → Developer settings → Personal access tokens (fine-grained)**
2. Click **Generate new token**
3. Choose **TECHLETES** as the resource owner
4. Set repository permissions → **Contents: Read-only**
5. Copy and store your token securely (e.g., as `${GITHUB_PAT}` in CI/CD secrets)

---

## 🛠 Requirements

The following dependencies are installed automatically:

- `requests`
- `pandas`
- `python-dotenv`

Each SDK client may also include its own generated dependencies (`urllib3`, `pydantic`, etc.).

