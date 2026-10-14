## Devcontainer Guide

This repository uses the shared Techletes Python devcontainer image. Open the repository in VS Code and choose **Dev Containers: Reopen in Container**; the image and lifecycle commands provide the supported development environment.

## What the Setup Provides

`.devcontainer/devcontainer.json` uses `ghcr.io/techletes/devcontainer:latest`, mounts the repository at `/workspaces/app`, and delegates Python workspace setup to `techletes-dev`. The shared image supplies the common Python, `uv`, GitHub CLI, 1Password CLI, Docker, and Codex tooling. The project environment remains in `.venv` and dependencies are managed by this repository's `pyproject.toml` and `uv.lock`.

`.devcontainer/initialize.sh` runs on the host before the container starts. It pulls the shared image, prepares the host-side Git and Codex configuration mount paths, and creates `.env` from `.env.template` when needed. It does not modify Git history or merge template updates.

The container runs `techletes-dev post-create python` after creation and `techletes-dev post-attach python` when attached. The post-create step bootstraps the project environment and hooks; the attach step applies the shared development setup. Keep project-specific runtime dependencies in `pyproject.toml` and `uv.lock` rather than adding a repository-specific image build.

## CI Smoke Check

`.github/workflows/test-devcontainer.yml` opens the same devcontainer configuration with `DEVCONTAINER_CI=true` and checks that the workspace contains `.venv`, the pre-commit hook, `uv`, and the project Python interpreter. The workflow does not build a local Dockerfile because this repository consumes the shared image.

## Common Recovery Steps

If the environment is incomplete, rerun `uv sync` and `uv run pre-commit install --install-hooks` from the devcontainer terminal. If the image or container configuration changed, use **Dev Containers: Rebuild and Reopen in Container**.

For Windows contributors, keep the repository in the WSL filesystem before reopening it in the container for better bind-mount performance. Continue to follow the repository's normal `uv` dependency workflow when changing packages.
