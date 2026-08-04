"""Apply the CountryCode compatibility patch."""


def apply_patched_country_code() -> None:
    """Apply the patched country code enum.

    Replace the generated SDK enum with a version that accepts unknown values.
    """
    import importlib

    from masterdata_client import models as models_pkg

    from .core import rebind_symbol_everywhere
    from .patched_country_code import PatchedCountryCode

    country_mod = importlib.import_module("masterdata_client.models.country_code")

    # Replace original enum
    country_mod.CountryCode = PatchedCountryCode  # type: ignore[attr-defined]

    # Replace imports in generated modules
    rebind_symbol_everywhere(
        models_pkg,
        "CountryCode",
        PatchedCountryCode,
    )

    # Fix already-created Pydantic models
    address_mod = importlib.import_module("masterdata_client.models.address_dto")

    AddressDTO = address_mod.AddressDTO

    # Pydantic v2 builds validators when the model class is created.
    # Rebuild the model after replacing the enum annotation.
    AddressDTO.model_fields["country"].annotation = PatchedCountryCode
    AddressDTO.model_rebuild(force=True)
