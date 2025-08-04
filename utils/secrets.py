# A tiny helper module to load secrets at runtime if you can’t rely on direnv
# This uses the 1Password CLI to fetch secrets on-the-fly in any script or app

import os
import re
import subprocess


def get_secret(path: str, env_var: str | None = None) -> str:
    """
    Fetch a secret from 1Password CLI and optionally set it as an environment variable.

    Args:
        path (str): The secret path in the format 'op://Vault name/Item name/field'.
        env_var (str, optional): If provided, the fetched secret will be set to this environment variable.

    Returns:
        str: The secret value fetched from 1Password.

    Raises:
        ValueError: If the path format is invalid.
        subprocess.CalledProcessError: If the 'op' CLI command fails.
    """
    # Validate path format: op://Vault name/Item name/field
    pattern = r"^op://[^/]+/[^/]+/[^/]+$"
    if not re.match(pattern, path):
        raise ValueError(
            "Secret path must be of the form 'op://Vault name/Item name/field'"
        )
    secret = subprocess.check_output(["op", "read", path]).decode().strip()
    if env_var:
        os.environ[env_var] = secret
    return secret
