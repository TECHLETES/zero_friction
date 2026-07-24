# Devcontainer-Only Documentation Implementation Plan

> **For agentic workers:** Documentation-only change; use the smallest inline workflow that safely completes the work.

**Goal:** Make the Python template documentation describe the devcontainer as the only supported development setup.

**Architecture:** Keep the existing reusable dependency, secrets, quality, and troubleshooting guidance, but frame every command as running inside the opened devcontainer. Remove host setup, manual virtual-environment activation, and platform-specific installation paths. Update the README and contributing guide so their entry points agree with the detailed docs.

**Tech Stack:** Markdown, VS Code Dev Containers, Docker, `uv`, repository documentation checks.

## Global Constraints

- The devcontainer is the sole documented development environment.
- Do not document `scripts/setup.sh` as an onboarding step.
- Do not add dependencies or change application/tooling behavior.
- Preserve accurate commands from `.devcontainer/post-create.sh`, `devcontainer.json`, and `pyproject.toml`.

## Tasks

### Task 1: Rewrite setup entry points

**Files:** `docs/0_setup.md`, `docs/quickstart.md`

- Document prerequisites by platform only where they are required to open Docker/VS Code.
- Make clone, open, Reopen in Container, wait for bootstrap, and first-success checks the complete setup path.
- Explain what the post-create script handles and how to recover by rebuilding/re-running `uv sync` inside the container.

### Task 2: Align daily and specialized guides

**Files:** `docs/1_usage.md`, `docs/2_secret_management.md`, `docs/3_dependency_management.md`, `docs/4_code_quality.md`, `docs/5_pre_commit_hooks.md`, `docs/6_pre_commit_troubleshooting.md`, `docs/7_devcontainers.md`

- Remove host-only setup and activation instructions.
- State that commands run in the integrated terminal attached to the devcontainer.
- Keep dependency, secrets, quality, pre-commit, and troubleshooting content focused on the container workflow.

### Task 3: Align repository-level documentation

**Files:** `README.md`, `CONTRIBUTING.md`, `docs/repository-standardization.md`

- Point all onboarding links and instructions to the devcontainer path.
- Remove host setup claims, host virtual-environment instructions, and manual 1Password host installation steps.
- Update the repository structure and workflow descriptions where they mention obsolete setup paths.

### Task 4: Verify documentation consistency

- Search all Markdown files for obsolete host setup language and `scripts/setup.sh` onboarding references.
- Run `git diff --check`.
- Run the repository’s documentation-relevant YAML/Markdown pre-commit checks if available, without changing unrelated files.
