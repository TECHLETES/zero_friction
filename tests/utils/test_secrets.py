import os
import subprocess

import pytest
from pytest import MonkeyPatch

from utils import secrets


def test_get_secret_sets_env_var(monkeypatch: MonkeyPatch) -> None:
    # Patch subprocess.check_output to return a fake secret

    def fake_check_output(args: list[str]) -> bytes:
        return b"supersecret\n"

    monkeypatch.setattr(
        subprocess,
        "check_output",
        fake_check_output,
    )
    # Ensure env var is not set before
    env_var = "TEST_SECRET_ENV"
    if env_var in os.environ:
        del os.environ[env_var]
    secret = secrets.get_secret("op://Vault/Item/field", env_var=env_var)
    assert secret == "supersecret"
    assert os.environ[env_var] == "supersecret"


def test_get_secret_invalid_path() -> None:
    with pytest.raises(ValueError):
        secrets.get_secret("invalid_path")


def test_get_secret_no_env_var(monkeypatch: MonkeyPatch) -> None:
    def fake_nosecret(args: list[str]) -> bytes:
        return b"nosecret\n"

    monkeypatch.setattr(subprocess, "check_output", fake_nosecret)
    secret = secrets.get_secret("op://Vault/Item/field")
    assert secret == "nosecret"
