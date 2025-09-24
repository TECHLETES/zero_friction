
### 📄 `SETUP.md` - Project Setup Guide

This guide will walk you through setting up the `python_basic_template` development environment on your local machine.

## 🚀 Quick Start: One-Command Setup

These scripts automate the entire setup process, including dependency installation, virtual environment creation, and tool configuration.

### Prerequisites

Before you begin, ensure you have the following installed:

*   **Python 3.12 or later**
*   **Git**
*   **1Password CLI**: Required for secret management. Follow the [official installation guide](https://developer.1password.com/docs/cli/get-started/).
*   **cURL**: Usually pre-installed on Linux/macOS.
*   **Sudo/Administrator access**: For installing system packages like `direnv`.

---

### Linux / macOS Setup

Open your terminal and run the following commands:

```bash
# 1. Clone the repository
git clone https://github.com/thom-techlete/python_basic_template.git

# 2. Navigate into the project directory
cd python_basic_template

# 3. Run the setup script
./scripts/setup.sh```

---

### Windows Setup

Open PowerShell and run the following commands:

```powershell
# 1. Clone the repository
git clone https://github.com/thom-techlete/python_basic_template.git

# 2. Navigate into the project directory
cd python_basic_template

# 3. Run the setup script
# If activation is blocked: Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
.\scripts\setup.ps1
```

After the script finishes, **restart your terminal or PowerShell session** to ensure all environment changes are applied correctly.

## 🤔 What the Setup Script Does

The setup script is designed to create a consistent and reproducible development environment by automating the following steps:

1.  **System Checks**: Verifies that Python, Git, and other required tools are installed.
2.  **Virtual Environment**: Creates an isolated Python virtual environment in a `venv/` directory.
3.  **Dependency Installation**: Installs all production and development dependencies using `pip-tools` for pinned, reproducible builds.
4.  **Pre-Commit Hooks**: Sets up automated code quality checks that run before every commit.
5.  **Secret Management**: Initializes `detect-secrets` to prevent accidental credential exposure and prepares for 1Password integration.
6.  **Environment Variables**: Configures `direnv` (on Linux/macOS) to automatically manage environment variables when you enter the project directory.

## 🛟 Common Setup Issues

<details>
<summary><b>Windows: PowerShell script execution is blocked</b></summary>

If you see an error like `File .\setup.ps1 cannot be loaded... not digitally signed`, your system is blocking unsigned PowerShell scripts.

**Solution:**
1. Open a new PowerShell window **as your normal user** (not as Administrator).
2. Run the following command to allow local scripts to run:
   ```powershell
   Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
   ```
3. Close the PowerShell window and re-run the setup script in a new one.

</details>

<details>
<summary><b>Linux: `python3.12-venv` not found</b></summary>

On some Linux distributions (like Debian/Ubuntu), the `venv` module is a separate package. The setup script will attempt to install it automatically.

**Solution:**
If the automatic installation fails, you can install it manually:
```bash
sudo apt-get update
sudo apt-get install python3.12-venv
```
Then, re-run `./scripts/setup.sh`.
</details>

<details>
<summary><b>1Password CLI: Not signed in or not linked to WSL</b></summary>

The setup script may warn that the `op` command-line tool is not signed in.

**Solution:**
1.  **Sign In**: Run `op account list`. If you see "No accounts configured," run `op signin` and follow the prompts.
2.  **WSL Users**: If you use the 1Password desktop app on Windows, you must enable WSL integration in the app's settings: `Settings > Developer > Integrate with Windows Subsystem for Linux`.

</details>

<details>
<summary><b>Virtual Environment is Corrupted</b></summary>

If you encounter strange dependency or pathing issues, your virtual environment might be in a bad state.

**Solution:**
1.  Delete the existing virtual environment directory.
    ```bash
    # On Linux/macOS
    rm -rf venv

    # On Windows
    Remove-Item -Recurse -Force venv
    ```
2.  Re-run the setup script (`./scripts/setup.sh` or `.\scripts\setup.ps1`) to create a fresh one.
</details>

***

