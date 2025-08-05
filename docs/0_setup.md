# 0. Project setup

Setting up a new Python project requires several important steps to ensure a secure and efficient development workflow—especially when working with secret management, virtual environments, and Git hygiene.

---

## **0.1 Prerequisite steps**

### 0.1.1 Set-up 1Password (CLI)

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

## 0.2 Automatic set-up script

To simplify the setup process, all mandatory setup steps have been implemented into a single, automated script. After cloning or forking this repository, you can configure your entire development environment by simply running:

```bash
bash scripts/setup.sh
```

This script will take care of everything needed to get started, so you can focus on writing code right away.

If you'd prefer to walk through the setup manually or want to understand what's happening under the hood, a detailed breakdown of each step is provided in the sections below.

## 0.3 Manual set-up development environment

Follow these steps to prepare your local machine for development with the Python Basic Template. Perform each section in order.

---

### 0.3.1 System Requirements Check

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

### 0.3.2 Virtual Environment Setup

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

### 0.3.3 Hybrid Dependency Management

This project uses a hybrid approach to dependency management:

- **Production dependencies**: declared in `pyproject.toml`, locked to `requirements.txt`.
- **Development dependencies**: listed under `project.optional-dependencies.dev` in `pyproject.toml`, locked to `dev-requirements.txt`.

You can use the helper script or perform each step manually:

**0.3.3.1 Usage of `dependency.sh`**

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
    

**0.3.3.2 Manual Steps**

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

### 0.3.4 System Locale Configuration

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

### 0.3.5 direnv Setup

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

### 0.3.6 Pre-commit Hooks Setup

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

### 0.3.7. Secret Management Setup

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

### 0.3.8 Development Tools Verification

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

### 0.3.9 Project Validation

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

### 0.3.10 Next Steps

- Restart your terminal or run `source ~/.bashrc`
- Start development: run your application or tests locally
- Refer to the project README for usage and contribution guidelines

***End of manual setup instructions.***