"""Apply repository compatibility changes to freshly generated SDK clients."""

import sys
from pathlib import Path

API_VERSION_CLIENTS = (
    "attachments",
    "billing",
    "communication",
    "configuration",
    "forecasting",
    "masterdata",
    "metering",
    "regionalregulations",
)

INSERT_BEFORE = "        # query parameters\n"
API_VERSION_BLOCK = (
    "        # Always target the documented API version.\n"
    '        if ("api-version", "1.0") not in query_params:\n'
    '            query_params.append(("api-version", "1.0"))\n\n'
)


def patch_api_version(output_root: Path, client_name: str) -> None:
    """Add the API version query parameter to one generated client."""
    api_client = (
        output_root
        / f"{client_name}_client"
        / f"{client_name}_client"
        / "api_client.py"
    )
    source = api_client.read_text()
    if API_VERSION_BLOCK in source:
        return
    if source.count(INSERT_BEFORE) != 1:
        raise RuntimeError(f"Could not locate query serialization in {api_client}")
    api_client.write_text(
        source.replace(INSERT_BEFORE, API_VERSION_BLOCK + INSERT_BEFORE)
    )


def normalize_text_files(output_root: Path) -> None:
    """Match repository whitespace and end-of-file checks."""
    for path in output_root.rglob("*"):
        if not path.is_file() or path.is_symlink():
            continue
        source = path.read_text()
        lines = [line.rstrip() for line in source.splitlines()]
        while lines and not lines[-1]:
            lines.pop()
        normalized = "\n".join(lines) + "\n"
        if normalized != source:
            path.write_text(normalized)


def main() -> None:
    """Patch all generated clients in the supplied output directory."""
    if len(sys.argv) != 2:
        raise SystemExit("usage: patch-generated-sdk.py OUTPUT_ROOT")
    output_root = Path(sys.argv[1]).resolve()
    for client_name in API_VERSION_CLIENTS:
        patch_api_version(output_root, client_name)
    normalize_text_files(output_root)


if __name__ == "__main__":
    main()
