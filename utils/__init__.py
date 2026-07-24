"""Utility package with runtime type checking and secret management."""

import os

from beartype.claw import beartype_this_package

if os.getenv("RUNTIME_TYPECHECK", "true") == "true":
    beartype_this_package()
