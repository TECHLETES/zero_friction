# Python Basic Template

A modern, production-ready Python project template with hybrid dependency management, secret management, and comprehensive development tooling.

## 🚀 Quick Start

### Prerequisites

- Python 3.11 or later
- git
- curl
- sudo access (for system package installation)

### One-Command Setup

```bash
git clone https://github.com/thom-techlete/python_basic_template.git
cd python_basic_template
./scripts/setup.sh
```

This will set up everything you need for development!

## 📋 Features

### 🔧 **Modern Dependency Management**
- **Hybrid approach**: Production dependencies via `pip-tools`, development tools via `pyproject.toml`
- **Reproducible builds** with pinned versions
- **Clean separation** between production and development dependencies

### 🔐 **Secret Management**
- **1Password CLI integration** for secure secret handling
- **detect-secrets** for preventing secrets in git
- **Environment variable management** with direnv

### 🛠️ **Development Tools**
- **Code formatting**: Black, isort
- **Linting**: flake8, mypy
- **Testing**: pytest with coverage
- **Pre-commit hooks** for code quality
- **Jupyter notebook support** with nbstripout

### 📦 **Project Structure**
```
python_basic_template/
├── docs/                           # Documentation
│   ├── dependency_management.md    # Dependency workflow guide
│   └── secret_management.md        # Secret management guide
├── example/                        # Example code
│   ├── using_secrets.py            # Secret management examples
│   └── using_secrets.ipynb         # Jupyter notebook examples
├── scripts/                        # Setup and utility scripts
│   ├── setup.sh                    # Complete development setup
│   ├── dependency.sh               # Dependency management
│   └── hooks/                      # Git hooks
├── utils/                          # Utility modules
│   ├── secrets.py                  # Secret management utilities
│   └── utils.py                    # General utilities
├── .github/workflows/              # GitHub Actions
├── pyproject.toml                  # Project configuration & dev dependencies
├── requirements.in                 # Production dependencies
└── requirements.txt                # Compiled production dependencies
```

## 🏗️ Dependency Management

This project uses a **hybrid dependency management approach**:

### Production Dependencies
- Add to `requirements.in`
- Compiled to `requirements.txt` via pip-tools
- Install with: `pip install -r requirements.txt`

### Development Dependencies
- Defined in `pyproject.toml` under `[project.optional-dependencies.dev]`
- Install with: `pip install -e .[dev]`

### Installation Options

| Command | What it installs |
|---------|------------------|
| `pip install -e .` | Minimal (production only) |
| `pip install -e .[dev]` | Full development setup |
| `./scripts/dependency.sh` | Both production + development |

**📖 Detailed guide**: [docs/dependency_management.md](docs/dependency_management.md)

## 🔐 Secret Management

Secure secret handling with 1Password CLI integration:

- **Environment variables** loaded via direnv
- **1Password CLI** for secure secret retrieval
- **detect-secrets** prevents accidental commits
- **Example usage** in `example/using_secrets.py`

**📖 Detailed guide**: [docs/secret_management.md](docs/secret_management.md)

## 🛠️ Development Workflow

### Setup Development Environment

```bash
# Complete setup (recommended for new developers)
./scripts/setup.sh

# Or manual setup
python3 -m venv venv
source venv/bin/activate
pip install -e .[dev]
pre-commit install
```

### Adding Dependencies

**Production dependency:**
```bash
# 1. Add to requirements.in
echo "requests" >> requirements.in

# 2. Compile and install
./scripts/dependency.sh

# 3. Commit both files
git add requirements.in requirements.txt
git commit -m "Add requests dependency"
```

**Development tool:**
```bash
# 1. Add to pyproject.toml [project.optional-dependencies.dev]
# 2. Install
pip install -e .[dev]

# 3. Commit
git add pyproject.toml
git commit -m "Add development tool"
```

### Code Quality

```bash
# Format code
black .
isort .

# Lint code
flake8 .
mypy .

# Run tests
pytest

# Run all pre-commit checks
pre-commit run --all-files
```

## 🧪 Testing

Run tests with pytest:

```bash
# Run all tests
pytest

# Run with coverage
pytest --cov

# Run specific test
pytest tests/test_specific.py
```

## 📝 Configuration

### Key Configuration Files

| File | Purpose |
|------|---------|
| `pyproject.toml` | Project metadata, dev dependencies, tool config |
| `requirements.in` | Production dependencies (human-edited) |
| `requirements.txt` | Compiled production dependencies (auto-generated) |
| `.pre-commit-config.yaml` | Pre-commit hooks configuration |
| `.envrc` | Environment variables (direnv) |
| `.secrets.baseline` | Secret detection baseline |

### Tool Configuration

All development tools are configured in `pyproject.toml`:
- **Black**: Code formatting (88 char line length)
- **isort**: Import sorting (Black compatible)
- **pytest**: Test configuration with coverage
- **mypy**: Type checking
- **flake8**: Linting rules

## 🚀 Using This Template

### For New Projects

1. **Use this template** on GitHub or clone it
2. **Update project metadata** in `pyproject.toml`:
   - Change `name`, `description`, `authors`
   - Update repository URLs
3. **Run setup**: `./scripts/setup.sh`
4. **Start coding**!

### Customization

- **Add your production dependencies** to `requirements.in`
- **Modify tool configurations** in `pyproject.toml`
- **Update documentation** in `docs/`
- **Add your modules** alongside `utils/`

## 📚 Documentation

- **[Dependency Management](docs/dependency_management.md)** - Detailed dependency workflow
- **[Secret Management](docs/secret_management.md)** - Secure secret handling guide

## 🤝 Contributing

1. **Setup development environment**: `./scripts/setup.sh`
2. **Create feature branch**: `git checkout -b feature/my-feature`
3. **Make changes** and ensure tests pass
4. **Pre-commit hooks** will run automatically
5. **Submit pull request**

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🛟 Troubleshooting

### Common Issues

**Virtual environment issues:**
```bash
rm -rf venv
python3 -m venv venv
source venv/bin/activate
./scripts/dependency.sh
```

**Pre-commit hook failures:**
```bash
pre-commit run --all-files
# Fix any issues and re-commit
```

**1Password CLI not working:**
- Ensure 1Password CLI is installed on Windows
- Enable CLI integration in 1Password settings
- Link to WSL if using Windows Subsystem for Linux

**Dependency conflicts:**
```bash
pip check  # Identify conflicts
# Review and resolve in requirements.in or pyproject.toml
```

---

**🎯 Ready to start your Python project with modern tooling and best practices!**
