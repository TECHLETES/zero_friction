"""Apply the billing calculation DTO compatibility patch."""


def apply_patched_billing_calculations_type_parameters_dto() -> None:
    """
    Replace the generated billing calculation DTO with the patched version.

    Apply the replacement everywhere under ``configuration_client.models``.
    """
    import importlib

    from configuration_client import models as models_pkg

    # import the module that defines the original class so its global can be rebound too
    params_mod = importlib.import_module(
        "configuration_client.models.billing_calculation_type_parameters_dto"
    )

    from .core import rebind_symbol_everywhere
    from .patched_billing_calculation_type_parameters_dto import (
        PatchedBillingCalculationTypeParametersDTO,
    )

    # rebind in the defining module
    params_mod.BillingCalculationTypeParametersDTO = (  # type: ignore[attr-defined]
        PatchedBillingCalculationTypeParametersDTO
    )

    # rebind in every models submodule that imported the symbol into its globals
    rebind_symbol_everywhere(
        models_pkg,
        "BillingCalculationTypeParametersDTO",
        PatchedBillingCalculationTypeParametersDTO,
    )
