import os

from beartype.claw import beartype_this_package

if os.getenv("RUNTIME_TYPECHECK", "true") == "true":
    beartype_this_package()
