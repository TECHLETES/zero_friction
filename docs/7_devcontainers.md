## Devcontainer Guide

This document is the canonical reference for the devcontainer setup that ships
with this template. Teams copying this repository into a new project should use
this guide to understand what the container does today, why it exists, and
which files to change when they need project-specific behavior.

## What Devcontainers Are

A devcontainer is a development environment defined as code. In VS Code, the
Dev Containers extension reads `.devcontainer/devcontainer.json`, builds or
pulls the configured container image, mounts the repository into that
container, and then opens the workspace inside it.

In practice, that means:

1. VS Code reads the devcontainer configuration.
2. Docker builds the image defined by `.devcontainer/Dockerfile`.
3. VS Code starts a container from that image.
4. Your repository is mounted into the container workspace.
5. VS Code runs any lifecycle command such as `postCreateCommand` or `postAttachCommand`.
6. VS Code applies container-specific settings and extension installs.

The result is that contributors work against the same OS base image, the same
Python version, the same toolchain, and the same workspace bootstrap sequence,
regardless of what is installed on the host machine.

## Why This Template Includes Devcontainers

This template is meant to be copied into new projects, including teams with a
mix of Windows, macOS, and Linux laptops. The devcontainer exists to reduce the
amount of host-specific setup work that every derived repository has to explain
and debug.

The main reasons this template includes a devcontainer are:

- Consistency: contributors get the same Python base image and the same
  bootstrapped workspace.
- Faster onboarding: a new developer can open the repo in VS Code and let the
  container provision the environment.
- Better Windows support: the container avoids many host Python and shell setup
  differences when paired with WSL2.
- Closer parity between development and automation: this repository's CI
  includes a devcontainer smoke job that builds the container and verifies that
  the workspace bootstraps successfully.

The devcontainer is the only supported development environment for this
template. Host tools are limited to Docker, VS Code, the Dev Containers
extension, and Git; project commands run in the container.

## How This Template's Devcontainer Works

The current implementation is intentionally small. It gives teams a working
baseline without hiding much behavior.

### Image and Tooling

The container image is built from `.devcontainer/Dockerfile`, which currently:

- Starts from `mcr.microsoft.com/devcontainers/python:1-3.12-bookworm`.
- Installs a pinned version of `uv` into `/usr/local/bin`.
- Installs the 1Password CLI and the Docker, database, and Redis client tools
  used by the template.
- Pre-creates cache directories for `uv` and `pre-commit` under the `vscode`
  user's home directory.
- Sets a couple of Python-related environment defaults such as disabling pip's
  version check and avoiding `.pyc` generation.

This is a good template default because the image stays easy to reason about.
Python and `uv` are baked into the image, while project dependencies are still
installed from the repository lock file during workspace bootstrap.

### Container Configuration

The runtime behavior lives in `.devcontainer/devcontainer.json`. In this
template, that file currently does the following:

- Builds from the local `Dockerfile` in the `.devcontainer` directory.
- Opens the repository at `/workspaces/${localWorkspaceFolderBasename}`.
- Uses `vscode` as the remote user and updates the container UID to match the
  host user when possible.
- Defines cache locations for `pre-commit` and `uv`.
- Mounts named Docker volumes for those caches so repeated container rebuilds do
  not have to start from an empty cache.
- Runs `bash .devcontainer/post-create.sh` after the container is created.
- Runs `bash .devcontainer/post-attach.sh` every time the container is attached
  so template updates can be checked and merged when appropriate.
- Installs container-specific VS Code extensions for Python, Pylance, mypy,
  Ruff, and Jupyter.
- Sets container-specific VS Code settings such as the default interpreter and
  pytest configuration.

Two details matter for derived repositories:

- The named cache volumes currently use template-specific names. When a team
  copies this template into a new project, those names should usually be
  renamed so cache volumes are clearly associated with the new repository.
- The interpreter path is set to `${workspaceFolder}/.venv/bin/python`, so the
  container is expected to create a repository-local virtual environment rather
  than using a global interpreter.

### Workspace Bootstrap

The first-time workspace setup happens in `.devcontainer/post-create.sh`. That
script currently:

1. Changes to the repository root.
2. Prints the `uv` and Python versions for visibility.
3. Runs `uv sync`.
4. Installs pre-commit hooks if the repository has a `.git` directory.
5. Checks whether `ipykernel` is importable and prints a note if it is not.
6. Prints a message about the `op` CLI being optional.
7. Prints the Windows/WSL recommendation to keep the repo in the WSL filesystem.

This means the container assumes the repository already contains a valid
`pyproject.toml` and `uv.lock`, and that `uv sync` is the correct way
to materialize the working environment. Attach-time checks can then compare the
local repository against `template/main` and attempt to merge template updates
without blocking normal development.

### VS Code Experience

The template configures both container-specific editor behavior and workspace
recommendations:

- `.devcontainer/devcontainer.json` installs extensions automatically when the
  repo is opened in the container.
- `.vscode/extensions.json` recommends the same core Python and container tools
  before the repository is reopened in the container.

That split is deliberate. The devcontainer file controls the container session;
the workspace recommendations help contributors open the repository before the
container starts.

### CI Coverage

This repository also checks the devcontainer in CI. The `devcontainer-smoke` job
in `.github/workflows/ci.yml` builds the devcontainer and verifies that:

- A repo-local `.venv` exists.
- The Git pre-commit hook was installed.
- `uv` is available.
- The project Python interpreter exists inside `.venv`.

That is useful context for teams customizing a derived repository: if you change
the devcontainer behavior, make sure the container still bootstraps a usable
workspace rather than only building successfully.

## Platform Recommendations

### Windows and WSL2

For Windows contributors, the recommended workflow is:

1. Install Docker Desktop.
2. Enable WSL2.
3. Enable Docker Desktop integration with your WSL distro.
4. Install VS Code and the Dev Containers extension.
5. Clone the repository inside the WSL filesystem, not under a Windows-mounted
   path such as `/mnt/c/...`.
6. Open the folder in VS Code from WSL.
7. Run `Dev Containers: Reopen in Container`.

The WSL filesystem recommendation matters because bind-mounted source trees are
usually much slower when the repository lives on the Windows filesystem. This
template's post-create script prints that recommendation as a reminder.

### Linux and macOS

Install Docker and VS Code with the Dev Containers extension, then open the
repository and run **Dev Containers: Reopen in Container**. Source code remains
in the local repository and is bind-mounted into the containerized workspace.
Rebuilding the container does not delete the Git working tree, but it can run
the environment bootstrap again.

## Day-to-Day Workflow Inside the Container

Once the container is up, run all project commands from the integrated terminal
attached to it.

### Opening the Project

On the first open or after a rebuild:

1. Reopen the repository in the container.
2. Wait for the post-create script to finish.
3. Confirm that VS Code is using `${workspaceFolder}/.venv/bin/python`.
4. Start working normally from the integrated terminal.

Do not run `./scripts/setup.sh`. The image build plus
`.devcontainer/post-create.sh` is the supported bootstrap path.

### Normal Development Commands

Typical commands inside the container are the same ones you would run on the
host:

```bash
uv run pytest
uv run mypy . --config-file=pyproject.toml
uv run ruff check .
uv run pre-commit run --all-files
```

If you change dependencies, keep following the repository's normal dependency
workflow:

1. Edit `pyproject.toml`.
2. Regenerate the lock file.
3. Run `uv sync` again.

[Edited by: Michaël Linger 7-5-2026]: #
Alternatively, you can use uv `add <package>` (e.g. `uv add sqlalchemy`) which automatically updates pyproject.toml, resolves dependencies, and installs them into the current environment in one step.

The devcontainer does not replace the repository's dependency management model.
It only provides the environment where that model runs.

### Notebooks and Jupyter

The devcontainer installs the Jupyter extension in VS Code and expects notebook
execution to use the local project environment in `.venv`. The post-create
script checks for `ipykernel` and prints a warning if it is missing. If notebook
support looks broken, the first thing to try is re-running `uv sync`.

### Secrets and 1Password

The container does not assume that the `op` CLI is installed or authenticated.
The post-create script only reports whether it is present. Teams should not rely
on automatic 1Password integration just because the repo is running inside a
devcontainer.

## How To Customize This Setup In A Derived Repository

When a team copies this template to start a new project, the right question is
usually not "should we keep the devcontainer?" but "which layer should we
change?" Use the smallest layer that matches the change you need.

### Recommended Customization Approach

Use this order of operations:

1. Keep the base structure unless the new project has a real need to diverge.
2. Rename template-specific labels such as the devcontainer name and cache
   volume names.
3. Add project-specific OS packages or CLIs in the Dockerfile.
4. Add project-specific bootstrap steps in `post-create.sh`.
5. Adjust VS Code settings and extension recommendations only when the project
   genuinely needs them.

Avoid pushing every change into `post-create.sh`. If a dependency is required in
every container instance, it usually belongs in the image build rather than in a
per-workspace bootstrap script.

### File Map: What To Edit And When

#### `.devcontainer/devcontainer.json`

Edit this file when you need to change how VS Code creates and launches the
development container.

Typical reasons to edit it:

- Rename the devcontainer for the new project.
- Change environment variables used by tools in the container.
- Change mounts, cache volume names, or workspace behavior.
- Change the lifecycle command that runs after container creation.
- Add or remove VS Code extensions that should be installed automatically inside
  the container.
- Add or adjust container-specific VS Code settings.

Do not use this file for large package installation scripts when those packages
can be installed once in the image instead.

#### `.devcontainer/Dockerfile`

Edit this file when you need to change the image itself.

Typical reasons to edit it:

- Add system packages required by your project.
- Install a language runtime, CLI, or build tool that should exist in every
  container instance.
- Change the base image or pinned tool versions.
- Pre-create directories or other image-level filesystem state.

If a tool is required before `post-create.sh` can run, it belongs here.

#### `.devcontainer/post-create.sh`

Edit this file when you need to change what happens after the repository is
mounted and the container is first created.

Typical reasons to edit it:

- Bootstrap project dependencies from lock files.
- Install Git hooks.
- Run one-time project setup that depends on the checked-out repository.
- Print guidance that contributors should see on first open.

Keep this script idempotent when possible. Contributors may rerun it manually,
and container rebuilds should not depend on fragile one-off state.

#### `.vscode/extensions.json`

Edit this file when you need to change which extensions VS Code recommends for
the repository in general, including host-based workflows.

Typical reasons to edit it:

- Recommend Docker or Dev Containers tooling.
- Recommend language or linting extensions that help contributors even before
  they reopen the repo in the container.
- Keep workspace recommendations aligned with the languages and tools used by
  the project.

Use this file for recommendations. Use `.devcontainer/devcontainer.json` for
extensions that should be installed automatically in the container session.

## Troubleshooting And Common Failure Modes

### The Container Does Not Start At All

Common causes:

- Docker Desktop or the local Docker engine is not running.
- On Windows, WSL2 integration is not enabled.
- The user opened the repo in a context where the Dev Containers extension
  cannot talk to Docker.

Start by confirming that Docker works on the host, then try `Dev Containers:
Rebuild and Reopen in Container`.

### The Container Builds, But The Workspace Is Not Ready

In this template, the most important workspace bootstrap step is:

```bash
uv sync
```

If that step fails, the container may open without a working `.venv` or without
project dependencies installed.

Typical causes:

- `uv.lock` is missing, stale, or inconsistent with `pyproject.toml`.
- Network or registry access is blocked while fetching dependencies.
- A derived repository changed bootstrap expectations without updating the
  devcontainer scripts.

First response:

```bash
uv sync
uv run pre-commit install --install-hooks
```

If the first command fails, fix the dependency or lock-file issue rather than
retrying the container repeatedly.

### VS Code Uses The Wrong Python Interpreter

The intended interpreter is `${workspaceFolder}/.venv/bin/python`. If VS Code is
not using it:

1. Check whether `.venv` exists.
2. Re-run `uv sync` if it does not.
3. Use the VS Code Python interpreter selector to point back to the repo-local
   virtual environment.
4. Rebuild the container if the environment was created in a broken state.

### Pre-commit Hooks Were Not Installed

The post-create script only installs hooks when a `.git` directory exists. That
means hook installation can be skipped if someone opens a source snapshot
without Git metadata.

Fix it from the container terminal:

```bash
uv run pre-commit install --install-hooks
```

### Jupyter Cannot Find A Kernel

The template expects notebook execution to use packages installed into the local
project environment. Re-run:

```bash
uv sync
```

If the problem persists in a derived repository, verify that `ipykernel` is
still part of the environment expected for notebook work.

### `op` Is Missing In The Container

That is expected in this template. The post-create script explicitly treats the
1Password CLI as optional. If a derived repository requires it, install it in
the image or use another secret-access pattern; do not add host-only setup
instructions.

### A Team Changed The Devcontainer And CI Started Failing

Remember that this template's CI does not just build the image. It checks that a
usable workspace exists after bootstrap. If the devcontainer smoke job fails,
look for regressions such as:

- `.venv` is no longer created.
- The pre-commit hook is no longer installed.
- `uv` is missing from the image.
- The expected Python interpreter path changed.

When you customize a derived repository, keep the bootstrap contract explicit
and update CI checks if the contract intentionally changes.

## Practical Rules Of Thumb

- If the change is about Docker image contents, edit `.devcontainer/Dockerfile`.
- If the change is about container launch behavior, edit
  `.devcontainer/devcontainer.json`.
- If the change is about project bootstrap after checkout, edit
  `.devcontainer/post-create.sh`.
- If the change is about editor recommendations for all contributors, edit
  `.vscode/extensions.json`.
- If you changed container build or launch behavior, rebuild the container.
- If you changed only repository bootstrap steps, rerunning the post-create
  script may be enough, but a rebuild is the safest reset.

Used this way, the devcontainer stays a transparent, maintainable part of the
template rather than a second, hidden setup system.
