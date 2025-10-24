def apply_patched_billing_calculations_type_parameters_dto() -> None:
    """
    Replace BillingCalculationTypeParametersDTO everywhere under configuration_client.models
    with our strict, explicit patched version.
    """
    import importlib
    from configuration_client import models as models_pkg

    # import the module that defines the original class so its global can be rebound too
    params_mod = importlib.import_module(
        "configuration_client.models.billing_calculation_type_parameters_dto"
    )

    from .patched_billing_calculation_type_parameters_dto import PatchedBillingCalculationTypeParametersDTO
    from .core import rebind_symbol_everywhere

    # rebind in the defining module
    params_mod.BillingCalculationTypeParametersDTO = PatchedBillingCalculationTypeParametersDTO

    # rebind in every models submodule that imported the symbol into its globals
    rebind_symbol_everywhere(models_pkg, "BillingCalculationTypeParametersDTO", PatchedBillingCalculationTypeParametersDTO)
