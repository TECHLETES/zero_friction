"""Apply the API Management version parameter to generated SDK clients."""

import argparse
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


def patch_api_clients(root: Path, check: bool = False) -> None:
    """Add or validate the API version in each generated client.

    Args:
        root: Repository root containing the ``sdk`` directory.
        check: Validate the patch without modifying generated files.

    Raises:
        FileNotFoundError: If a generated client file is missing.
        ValueError: If a generated file no longer has the expected insertion point.
    """
    for client in CLIENTS:
        path = root / "sdk" / client / client / "api_client.py"
        source = path.read_text(encoding="utf-8")
        patch_count = source.count(PATCH)
        if patch_count > 1:
            raise ValueError(f"Found duplicate API version patches in {path}")
        if patch_count == 1:
            if MARKER not in source or source.index(PATCH) > source.index(MARKER):
                raise ValueError(f"API version patch is misplaced in {path}")
            continue
        if MARKER not in source:
            raise ValueError(f"Expected query parameter insertion point in {path}")
        if check:
            raise ValueError(f"API version patch is missing from {path}")
        path.write_text(source.replace(MARKER, PATCH + MARKER, 1), encoding="utf-8")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--check",
        action="store_true",
        help="verify every generated client is patched without changing files",
    )
    parser.add_argument(
        "--root",
        type=Path,
        default=Path(__file__).resolve().parents[1],
        help="repository-like root containing sdk/ (defaults to this repository)",
    )
    args = parser.parse_args()
    patch_api_clients(
        args.root,
        check=args.check,
    )
