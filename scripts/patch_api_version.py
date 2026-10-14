"""Apply the API Management version parameter to generated SDK clients."""

from pathlib import Path

CLIENTS = (
    "attachments_client",
    "billing_client",
    "communication_client",
    "configuration_client",
    "forecasting_client",
    "masterdata_client",
    "metering_client",
    "regionalregulations_client",
)
PATCH = (
    "        # Ensure API Management receives its required API version.\n"
    "        if ('api-version', '1.0') not in query_params:\n"
    "            query_params.append(('api-version', '1.0'))\n\n"
)
MARKER = "        # query parameters\n"


def patch_api_clients(root: Path) -> None:
    """Add the API version to each generated client's outgoing query parameters.

    Args:
        root: Repository root containing the ``sdk`` directory.

    Raises:
        FileNotFoundError: If a generated client file is missing.
        ValueError: If a generated file no longer has the expected insertion point.
    """
    for client in CLIENTS:
        path = root / "sdk" / client / client / "api_client.py"
        source = path.read_text(encoding="utf-8")
        if PATCH in source:
            continue
        if MARKER not in source:
            raise ValueError(f"Expected query parameter insertion point in {path}")
        path.write_text(source.replace(MARKER, PATCH + MARKER, 1), encoding="utf-8")


if __name__ == "__main__":
    patch_api_clients(Path(__file__).resolve().parents[1])
