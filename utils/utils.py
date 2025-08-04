import sys
from pathlib import Path


def add_project_root(marker: str = ".git") -> Path:
    path = Path(__file__).resolve()
    for parent in path.parents:
        if (parent / marker).exists():
            sys.path.append(str(parent))
            return
    raise RuntimeError(
        f"Project root not found (no '{marker}' in any parent directories)"
    )
