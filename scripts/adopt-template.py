#!/usr/bin/env python3
"""Adapt template metadata after merging python_template into an existing repo.

This script is intended to be run inside the target repository after the first
merge from TECHLETES/python_template. It updates repository-specific metadata in
common template files without touching application code.
"""

from __future__ import annotations

import argparse
import json
import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def _run(command: list[str]) -> str:
    return subprocess.check_output(command, cwd=ROOT, text=True).strip()


def _repo_name_from_git() -> str | None:
    try:
        url = _run(["git", "config", "--get", "remote.origin.url"])
    except Exception:
        return None

    match = re.search(r"[:/]([^/:]+/[^/]+?)(?:\.git)?$", url)
    if not match:
        return None
    return match.group(1).split("/", 1)[1]


def _slug(value: str) -> str:
    value = value.strip().replace("_", "-").lower()
    value = re.sub(r"[^a-z0-9-]+", "-", value)
    value = re.sub(r"-+", "-", value).strip("-")
    return value or "python-project"


def _package_name(value: str) -> str:
    value = value.strip().replace("-", "_").lower()
    value = re.sub(r"[^a-z0-9_]+", "_", value)
    value = re.sub(r"_+", "_", value).strip("_")
    if not value or value[0].isdigit():
        value = f"app_{value}"
    return value


def _replace_regex(path: Path, replacements: list[tuple[str, str]]) -> bool:
    if not path.exists():
        return False
    original = path.read_text(encoding="utf-8")
    updated = original
    for pattern, replacement in replacements:
        updated = re.sub(pattern, replacement, updated, flags=re.MULTILINE)
    if updated != original:
        path.write_text(updated, encoding="utf-8")
        return True
    return False


def _update_json(path: Path, project_slug: str) -> bool:
    if not path.exists():
        return False
    data = json.loads(path.read_text(encoding="utf-8"))
    changed = False
    if (
        data.get("name") in {"python-template", "Python Template"}
        or data.get("name") != project_slug
    ):
        data["name"] = project_slug
        changed = True
    if changed:
        path.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8")
    return changed


def main() -> int:
    """Run pipeline for converting repository to repo specific."""
    parser = argparse.ArgumentParser(
        description="Update python_template metadata for an existing repository."
    )
    parser.add_argument(
        "--name",
        help="Repository/project name. Defaults to origin repo or folder name.",
    )
    parser.add_argument(
        "--package",
        help="Main Python package/module name. Defaults to normalized project name.",
    )
    parser.add_argument(
        "--description", default="", help="Project description for pyproject.toml."
    )
    parser.add_argument(
        "--owner", default="TECHLETES", help="GitHub owner/org. Defaults to TECHLETES."
    )
    args = parser.parse_args()

    detected_name = _repo_name_from_git() or ROOT.name
    project_slug = _slug(args.name or detected_name)
    package = _package_name(args.package or project_slug)
    description = args.description or f"Python project for {project_slug}."
    repo_url = f"https://github.com/{args.owner}/{project_slug}"

    changed: list[str] = []

    if _replace_regex(
        ROOT / "pyproject.toml",
        [
            (r'^name = ".*"$', f'name = "{project_slug}"'),
            (r'^description = ".*"$', f'description = "{description}"'),
            (r'^Homepage = ".*"$', f'Homepage = "{repo_url}"'),
            (r'^Repository = ".*"$', f'Repository = "{repo_url}"'),
            (r'^Issues = ".*"$', f'Issues = "{repo_url}/issues"'),
            (r'include = \["utils\*", "example\*"\]', f'include = ["{package}*"]'),
            (r'"--cov=utils",\n\s+"--cov=example",', f'"--cov={package}",'),
            (
                r'"--beartype-packages=utils,example"',
                f'"--beartype-packages={package}"',
            ),
            (r'source = \["utils", "example"\]', f'source = ["{package}"]'),
            (r'files = \["example"\]', f'files = ["{package}"]'),
        ],
    ):
        changed.append("pyproject.toml")

    if _update_json(ROOT / ".devcontainer" / "devcontainer.json", project_slug):
        changed.append(".devcontainer/devcontainer.json")

    if _replace_regex(
        ROOT / ".pre-commit-config.yaml",
        [
            (
                r"entry: uv run pytest --cov --cov-fail-under=80 --beartype-packages=utils,example",
                f"entry: uv run pytest --cov --cov-fail-under=80 --beartype-packages={package}",
            ),
        ],
    ):
        changed.append(".pre-commit-config.yaml")

    print(f"Project name: {project_slug}")
    print(f"Python package: {package}")
    if changed:
        print("Updated:")
        for path in changed:
            print(f"- {path}")
    else:
        print("No template metadata changes were needed.")

    print("\nNext steps:")
    print(
        "1. Review pyproject.toml and adjust dependencies/tool settings for this repo."
    )
    print("2. Run: uv lock && uv sync")
    print("3. Run: uv run pre-commit run --all-files")
    print("4. Commit the adoption changes.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
