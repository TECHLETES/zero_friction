"""Fetch the latest OpenAPI documents published by the Zero Friction portal."""

import argparse
import json
import os
import re
import sys
import tempfile
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path

API_SPECS: tuple[str, ...] = (
    "Attachments-1-0",
    "Billing-1-0",
    "Communication-1-0",
    "Configuration-1-0",
    "Forecasting-1-0",
    "Masterdata-1-0",
    "Metering-1-0",
    "RegionalRegulations-1-0",
)
DEFAULT_BASE_URL = "https://zf-apim-heat-prd-int-we-001.data.azure-api.net"
OPENAPI_ACCEPT = "application/vnd.oai.openapi"


def discover_api_version(base_url: str) -> str:
    """Find the newest API version supported by the Zero Friction APIM endpoint.

    Args:
        base_url: APIM data-plane base URL.

    Returns:
        The newest supported API version reported by APIM.

    Raises:
        urllib.error.URLError: If the API cannot be reached.
        ValueError: If APIM does not report a parseable supported version list.
    """
    url = f"{base_url.rstrip('/')}/apis"
    request = urllib.request.Request(
        url, headers={"User-Agent": "zero-friction-sdk-spec-sync"}
    )
    try:
        with urllib.request.urlopen(request, timeout=30) as response:
            payload = response.read()
    except urllib.error.HTTPError as exc:
        if exc.code != 400:
            raise
        payload = exc.read()

    try:
        error = json.loads(payload.decode("utf-8"))
        message = error["error"]["message"]
    except (UnicodeDecodeError, json.JSONDecodeError, KeyError, TypeError) as exc:
        raise ValueError("APIM did not return its supported API versions") from exc

    match = re.search(
        r"Supported versions:\s*(.+?)(?:\s+Example query param|$)", message
    )
    if not match:
        raise ValueError("APIM did not report a supported API version list")

    versions = re.split(r"[\s,]+", match.group(1).strip())
    dated_versions = []
    for version in versions:
        version_match = re.fullmatch(r"(\d{4})-(\d{2})-(\d{2})(?:-(.+))?", version)
        if version_match:
            year, month, day, suffix = version_match.groups()
            dated_versions.append(
                (
                    (int(year), int(month), int(day), suffix is None, suffix or ""),
                    version,
                )
            )
    if not dated_versions:
        raise ValueError(f"APIM returned no recognizable API versions: {versions}")
    return max(dated_versions)[1]


def fetch_spec(base_url: str, api_id: str, api_version: str) -> bytes:
    """Fetch one API's OpenAPI document.

    Args:
        base_url: APIM data-plane base URL.
        api_id: Zero Friction API identifier.
        api_version: APIM REST API version.

    Returns:
        The exported OpenAPI document as UTF-8 bytes.

    Raises:
        urllib.error.URLError: If the API cannot be reached.
        ValueError: If the response is not a complete OpenAPI document.
    """
    query = urllib.parse.urlencode({"export": "true", "api-version": api_version})
    url = f"{base_url.rstrip('/')}/apis/{api_id}?{query}"
    request = urllib.request.Request(
        url,
        headers={"Accept": OPENAPI_ACCEPT, "User-Agent": "zero-friction-sdk-spec-sync"},
    )
    with urllib.request.urlopen(request, timeout=60) as response:
        content = response.read()

    validate_spec(content, api_id)
    return content


def validate_spec(content: bytes, api_id: str) -> None:
    """Reject empty, invalidly encoded, or pathless OpenAPI exports.

    Args:
        content: Exported document bytes.
        api_id: API identifier used in diagnostic messages.

    Raises:
        ValueError: If the document does not contain a populated OpenAPI 3 spec.
    """
    try:
        document = content.decode("utf-8-sig")
    except UnicodeDecodeError as exc:
        raise ValueError(f"{api_id}: response is not UTF-8") from exc

    if not re.search(r"(?m)^openapi:\s*['\"]?3\.", document):
        raise ValueError(f"{api_id}: response is not an OpenAPI 3 document")
    if re.search(r"(?m)^paths:\s*\{\s*\}", document):
        raise ValueError(f"{api_id}: exported OpenAPI document has no paths")
    if not re.search(r"(?m)^  ['\"]?/[^\r\n:]+['\"]?:\s*$", document):
        raise ValueError(f"{api_id}: exported OpenAPI document has no API paths")


def main() -> int:
    """Fetch and atomically update the repository's OpenAPI snapshots."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--base-url",
        default=DEFAULT_BASE_URL,
        help="APIM data-plane base URL",
    )
    parser.add_argument(
        "--api-version",
        help="APIM REST API version override (default: discover from the endpoint)",
    )
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "openapi_specs",
        help="directory for the downloaded YAML files",
    )
    parser.add_argument(
        "--check",
        action="store_true",
        help="report whether local snapshots differ without changing files",
    )
    args = parser.parse_args()

    try:
        api_version = args.api_version or discover_api_version(args.base_url)
    except (urllib.error.URLError, TimeoutError, ValueError) as exc:
        print(f"Could not determine the APIM API version: {exc}", file=sys.stderr)
        return 1
    print(f"Using APIM API version {api_version}.")

    documents: dict[Path, bytes] = {}
    try:
        for api_id in API_SPECS:
            target = args.output_dir / f"{api_id}.yaml"
            documents[target] = fetch_spec(args.base_url, api_id, api_version)
    except (urllib.error.URLError, TimeoutError, ValueError) as exc:
        print(f"OpenAPI download failed: {exc}", file=sys.stderr)
        return 1

    changed = [
        path
        for path, content in documents.items()
        if not path.exists() or path.read_bytes() != content
    ]
    if args.check:
        if changed:
            print("OpenAPI snapshots are out of date:")
            for path in changed:
                print(f"  {path}")
            return 1
        print("OpenAPI snapshots are up to date.")
        return 0

    args.output_dir.mkdir(parents=True, exist_ok=True)
    temporary_files: list[tuple[Path, Path]] = []
    try:
        for target, content in documents.items():
            with tempfile.NamedTemporaryFile(
                mode="wb",
                dir=args.output_dir,
                prefix=f".{target.name}.",
                suffix=".tmp",
                delete=False,
            ) as temp_file:
                temp_path = Path(temp_file.name)
                temp_file.write(content)
            temporary_files.append((temp_path, target))

        for temp_path, target in temporary_files:
            os.replace(temp_path, target)
    finally:
        for temp_path, _ in temporary_files:
            if temp_path.exists():
                temp_path.unlink()

    print(f"Updated {len(documents)} OpenAPI snapshots in {args.output_dir}.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
