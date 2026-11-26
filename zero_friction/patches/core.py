"""Helpers for patching symbols in generated SDK modules."""

import importlib
import pkgutil
from collections.abc import Callable, Iterable
from typing import Any

_APPLIED: set[str] = set()


def _eager_import_submodules(pkg: Any) -> Iterable[Any]:
    """Import all submodules under a package to make their module namespaces mutable."""
    prefix = pkg.__name__ + "."
    for _finder, name, _ispkg in pkgutil.walk_packages(pkg.__path__, prefix):
        try:
            yield importlib.import_module(name)
        except Exception:
            # Be resilient if a generated module has side effects
            continue


def rebind_symbol_everywhere(models_pkg: Any, symbol_name: str, new_obj: Any) -> None:
    """Rebind ``symbol_name`` to ``new_obj`` in imported model modules."""
    # Best effort import of the defining module based on a conventional filename
    # Callers should still rebind in the known defining module explicitly if they know it.
    for mod in _eager_import_submodules(models_pkg):
        if hasattr(mod, symbol_name):
            setattr(mod, symbol_name, new_obj)


def apply_patches() -> None:
    """Run all registered patch functions once."""
    from .apply_patched_country_code import apply_patched_country_code

    for fn in [apply_patched_country_code]:
        _apply_once(fn)


def _apply_once(fn: Callable[[], None]) -> None:
    name = fn.__name__
    if name in _APPLIED:
        return
    fn()
    _APPLIED.add(name)
