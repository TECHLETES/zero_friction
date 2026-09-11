"""Offline compatibility checks for the generated SDK clients."""

import os
import subprocess
import sys
from pathlib import Path


def test_repository_generated_clients_and_patches() -> None:
    """Load all generated clients from this checkout and exercise SDK wiring."""
    repository_root = Path(__file__).parents[2]
    client_names = (
        "attachments",
        "billing",
        "communication",
        "configuration",
        "forecasting",
        "masterdata",
        "metering",
        "regionalregulations",
    )
    sdk_paths = [
        str(repository_root / "sdk" / f"{name}_client") for name in client_names
    ]
    script = r"""
import importlib
import pkgutil
from pathlib import Path

client_names = %r
repository_root = Path(%r)

for name in client_names:
    package_name = f"{name}_client"
    package = importlib.import_module(package_name)
    configuration_module = importlib.import_module(f"{package_name}.configuration")
    assert Path(package.__file__).resolve().is_relative_to(
        repository_root / "sdk" / package_name
    )
    assert package.ApiClient is importlib.import_module(
        f"{package_name}.api_client"
    ).ApiClient
    configuration = configuration_module.Configuration(
        api_key={"apiKeyHeader": "header-key", "apiKeyQuery": "query-key"}
    )
    assert set(configuration.auth_settings()) == {"apiKeyHeader", "apiKeyQuery"}
    assert configuration.auth_settings()["apiKeyHeader"]["key"] == "apim-sub"
    assert configuration.auth_settings()["apiKeyQuery"]["key"] == "subscription-key"
    _, url, _, _, _ = package.ApiClient(configuration).param_serialize(
        method="GET", resource_path="/status", query_params=[], header_params={}
    )
    assert url.endswith("/status?api-version=1.0")

from zero_friction.core.sdk_client import SDKClient
from zero_friction.core.config import ZeroFrictionConfig

class OAuthResponse:
    def raise_for_status(self):
        pass

    def json(self):
        return {"access_token": "offline-token", "expires_in": 3600}

def fake_post(*args, **kwargs):
    return OAuthResponse()

import requests
requests.post = fake_post

config = ZeroFrictionConfig(rate_limit_per_minute=1000)
sdk_client = SDKClient(config)
for name in client_names:
    package_name = f"{name}_client"
    client = getattr(sdk_client, package_name)
    api_package = importlib.import_module(f"{package_name}.api")
    for _, module_name, _ in pkgutil.iter_modules(api_package.__path__):
        module = importlib.import_module(f"{package_name}.api.{module_name}")
        api_classes = [
            value for value in vars(module).values()
            if isinstance(value, type) and value.__name__.endswith("Api")
        ]
        if api_classes:
            assert hasattr(client, module_name), (package_name, module_name)

from masterdata_client.models.address_dto import AddressDTO
from masterdata_client.models.country_code import CountryCode
from configuration_client.models.upsert_product_attachment_file_request import (
    UpsertProductAttachmentFileRequest,
)

assert CountryCode("xxy").value == "xxy"
assert AddressDTO(country="xxy").country.value == "xxy"
attachment = UpsertProductAttachmentFileRequest(
    culture="nl-NL", fileName=None, attachmentId=None
)
assert attachment.culture == "nl-NL"
"""
    completed = subprocess.run(
        [
            sys.executable,
            "-c",
            script % (client_names, str(repository_root)),
        ],
        cwd=repository_root,
        env={**os.environ, "PYTHONPATH": os.pathsep.join(sdk_paths)},
        check=False,
        capture_output=True,
        text=True,
    )
    assert completed.returncode == 0, completed.stderr or completed.stdout
