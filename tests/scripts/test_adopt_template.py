"""Tests for the template adoption helper."""

from importlib.util import module_from_spec, spec_from_file_location
from pathlib import Path

from pytest import MonkeyPatch

SCRIPT = Path(__file__).parents[2] / "scripts" / "adopt-template.py"
SPEC = spec_from_file_location("adopt_template", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
adopt_template = module_from_spec(SPEC)
SPEC.loader.exec_module(adopt_template)


def test_repo_url_from_git_converts_ssh_origin_to_https(
    monkeypatch: MonkeyPatch,
) -> None:
    """Convert an SSH origin into a browsable repository URL."""
    monkeypatch.setattr(
        adopt_template,
        "_run",
        lambda command: (
            "origin\tgit@github.com:TECHLETES/example-project.git (fetch)\n"
            "origin\tgit@github.com:TECHLETES/example-project.git (push)"
        ),
    )

    assert (
        adopt_template._repo_url_from_git()
        == "https://github.com/TECHLETES/example-project"
    )


def test_repo_url_from_git_preserves_https_origin(monkeypatch: MonkeyPatch) -> None:
    """Use an HTTPS origin without its trailing Git suffix."""
    monkeypatch.setattr(
        adopt_template,
        "_run",
        lambda command: "origin https://git.example.com/team/project.git (fetch)",
    )

    assert adopt_template._repo_url_from_git() == "https://git.example.com/team/project"
