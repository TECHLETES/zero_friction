
### 📄 `0_setup.md` - Project Setup Guide

This guide will walk you through setting up the `python_template` development environment on your local machine.

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
git clone https://github.com/TECHLETES/{REPO_NAME}.git

# 2. Navigate into the project directory
cd {REPO_NAME}

# 3. Run the setup script
./scripts/setup.sh
```

---

### Windows Setup

Open PowerShell and run the following commands:

```powershell
# 1. Clone the repository
git clone https://github.com/TECHLETES/{REPO_NAME}.git

# 2. Navigate into the project directory
cd {REPO_NAME}

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

## 🧰 Manual setup (for advanced users)

If you prefer manual control, follow these steps in order.

## **1 Prerequisites**

Ensure the following tools are installed:

- Python 3.12 or later
- Git
- curl
- 1Password CLI
- Sudo/admin access (for direnv, etc.)

### 1.1 Set-up 1Password (CLI)

1. **Download and activate 1Password Desktop**
    1. Download and install from here:
        
        [Download 1Password for Windows | 1Password](https://1password.com/downloads/windows)
        
    2. Log in with your account.
    3. Go to ‘Settings’ > ‘Security’ > Enable ‘Unlock with Windows Hello’
    4. Go to ‘settings’ > ‘Developer’ > Enable ‘Integrate with 1Password CLI’.
    
2. **Set-up 1password cli**
    1. Open windows powershell and run
        
        ```bash
        winget install 1password-cli
        ```
        
    2. In your file explorer navigate to: 
        
        `C:/Users/<username>/AppData/Local/Microsoft/WinGet/Packages/<1password_cli_package_id>/op.exe` and copy the absolute path that leads to the `op.exe` 
        
    3. You then modify the path by replacing `C:`/ with `/mnt/c/` . Also replace all backward slashes with forward slashes. Your final path should look something like:
        
        `/mnt/c/Users/thome/AppData/Local/Microsoft/WinGet/Packages/AgileBits.1Password.CLI_Microsoft.Winget.Source_8wekyb3d8bbwe/op.exe`
        
    4. Then in WSL run the following command:
        
        ```bash
        ln -s <path_from_previous_step> /usr/bin/op
        ```
        
    5. Run in WSL:
        
        ```bash
        op --version
        ```
        
        If you see a version number, then the link was succesfull and you can access 1Password in WSL
        

---

## 2 Automatic set-up script

To simplify the setup process, all mandatory setup steps have been implemented into a single, automated script. After cloning or forking this repository, you can configure your entire development environment by simply running:

```bash
bash scripts/setup.sh
```

This script will take care of everything needed to get started, so you can focus on writing code right away.

If you'd prefer to walk through the setup manually or want to understand what's happening under the hood, a detailed breakdown of each step is provided in the sections below.

## 3 Manual set-up development environment

Follow these steps to prepare your local machine for development with the Python Basic Template. Perform each section in order.

---

### 3.1 System Requirements Check

1. **Verify Python 3**
    
    ```bash
    python3 --version
    ```
    
    - Ensure the version is **3.12** or later.
2. **Verify pip**
    
    ```bash
    pip --version
    ```
    
3. **Verify curl**
    
    ```bash
    command -v curl
    ```
    
4. **Verify git**
    
    ```bash
    git --version
    ```
    

If any of these commands fail, install the missing package before proceeding.

---

### 3.2 Virtual Environment Setup

1. **Remove existing `venv`** (if present)
    
    ```bash
    rm -rf venv
    ```
    
2. **Create a new virtual environment**
    
    ```bash
    python3 -m venv venv
    ```
    
3. **Activate the virtual environment**
    
    ```bash
    source venv/bin/activate
    ```
    
4. **Upgrade pip**
    
    ```bash
    pip install --upgrade pip
    ```
    

---

### 3.3 Hybrid Dependency Management

This project uses a hybrid approach to dependency management:

- **Production dependencies**: declared in `pyproject.toml`, locked to `requirements.txt`.
- **Development dependencies**: listed under `project.optional-dependencies.dev` in `pyproject.toml`, locked to `dev-requirements.txt`.

You can use the helper script or perform each step manually:

**3.3.1 Usage of `dependency.sh`**

- Install both production and development dependencies:
    
    ```
    ./scripts/dependency.sh
    ```
    
- Install only production dependencies:
    
    ```
    ./scripts/dependency.sh --prod
    ```
    
- Install only development dependencies:
    
    ```
    ./scripts/dependency.sh --dev
    ```
    

**3.3.2 Manual Steps**

If you prefer to run each step manually, follow these commands:

1. **Activate the virtual environment** (must be in project root):
    
    ```
    source venv/bin/activate
    ```
    
2. **Ensure `pip-tools` is installed**:
    
    ```
    pip show pip-tools &>/dev/null || pip install pip-tools
    ```
    
3. **Compile production lockfile**:
    
    ```
    pip-compile pyproject.toml \
      --output-file=requirements.txt \
      --generate-hashes
    ```
    
4. **Install production dependencies**:
    
    ```
    pip install --require-hashes -r requirements.txt
    ```
    
5. **Compile development lockfile**:
    
    ```
    pip-compile pyproject.toml \
      --extra=dev \
      --output-file=requirements-dev.txt \
      --generate-hashes
    ```
    
6. **Install development dependencies**:
    
    ```
    pip install --require-hashes -r requirements-dev.txt
    ```
    
7. **Verify that all packages are compatible**:
    
    ```
    pip check
    ```
    

---

### 3.4 System Locale Configuration

1. **Update package lists and install locales**
    
    ```bash
    sudo apt update
    sudo apt install -y locales
    ```
    
2. **Generate and apply the `en_US.UTF-8` locale**
    
    ```bash
    sudo locale-gen en_US.UTF-8
    sudo update-locale LANG=en_US.UTF-8
    ```
    

---

### 3.5 direnv Setup

1. **Install `direnv`**
    
    ```bash
    sudo apt install -y direnv
    ```
    
2. **Add the `direnv` hook to your shell profile**
    
    ```bash
    echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
    source ~/.bashrc
    ```
    
3. **Allow the project `.envrc`**
    
    ```bash
    cd path/to/project
    direnv allow
    ```
    

---

### 3.6 Pre-commit Hooks Setup

1. **Install Git hooks**
    
    ```bash
    pre-commit install
    ```
    
2. **Update hook definitions**
    
    ```bash
    pre-commit autoupdate
    
    ```
    
3. **Run all checks once**
    
    ```bash
    pre-commit run --all-files
    
    ```
    

---

### 3.7. Secret Management Setup

1. **Check for 1Password CLI**
    
    ```bash
    op --version
    ```
    
2. **Verify your 1Password account**
    
    ```bash
    op account list
    ```
    
3. **Initialize a baseline for `detect-secrets`**
    
    ```bash
    mv .secrets.baseline .secrets.baseline.bak 2>/dev/null || true
    detect-secrets scan > .secrets.baseline
    detect-secrets audit .secrets.baseline
    ```
    

---

### 3.8 Development Tools Verification

1. **Black**
    
    ```bash
    pip show black
    ```
    
2. **Ruff**
    
    ```bash
    pip show ruff
    ```
    
3. **Mypy**
    
    ```bash
    pip show mypy
    ```
    
4. **Beartype**
    
    ```bash
    pip show beartype
    ```
    
5. **pytest**
    
    ```bash
    pip show pytest
    
    ```
    

---

### 3.9 Project Validation

1. **Ensure all modules import correctly**
    
    ```bash
    python3 - << 'EOF'
    import utils.secrets
    import utils.utils
    print("Imports successful")
    EOF
    
    ```
    
2. **Syntax check all Python files**
    
    ```bash
    find . -name "*.py" -not -path "./venv/*" \
      -exec python3 -m py_compile {} +
    ```
    
3. **Verify installed dependencies**
    
    ```bash
    pip check
    ```
    

---

### 3.10 Next Steps

- Restart your terminal or run `source ~/.bashrc`
- Start development: run your application or tests locally
- Refer to the project README for usage and contribution guidelines
