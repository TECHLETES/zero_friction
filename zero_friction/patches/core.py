# zero_friction/patches/core.py
import importlib
import pkgutil
from typing import Callable, Iterable, Set, Optional, Any


_APPLIED: Set[str] = set()


def _eager_import_submodules(pkg) -> Iterable[Any]:
    """Import all submodules under a package to make their module namespaces mutable."""
    prefix = pkg.__name__ + "."
    for _finder, name, _ispkg in pkgutil.walk_packages(pkg.__path__, prefix):
        try:
            yield importlib.import_module(name)
        except Exception:
            # Be resilient if a generated module has side effects
            continue


def rebind_symbol_everywhere(models_pkg, symbol_name: str, new_obj: Any) -> None:
    """
    Rebind `symbol_name` to `new_obj` in:
      1) the defining module where it originally lives, and
      2) every models submodule that may have imported it into its globals.
    """
    # Best effort import of the defining module based on a conventional filename
    # Callers should still rebind in the known defining module explicitly if they know it.
    for mod in _eager_import_submodules(models_pkg):
        if hasattr(mod, symbol_name):
            setattr(mod, symbol_name, new_obj)


def apply_patches() -> None:
    """
    Run all registered patch functions once. Safe to call multiple times.
    """
    from .apply_patched_billing_calculations_type_parameters_dto import apply_patched_billing_calculations_type_parameters_dto

    for fn in [
        apply_patched_billing_calculations_type_parameters_dto,
        # add future patch functions here
    ]:
        _apply_once(fn)


def _apply_once(fn: Callable[[], None]) -> None:
    name = fn.__name__
    if name in _APPLIED:
        return
    fn()
    _APPLIED.add(name)
