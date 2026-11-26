"""Tests for generated billing calculation DTO parsing and serialization."""

import json
from importlib import import_module
from importlib.util import find_spec


def test_billing_item_roundtrip_uses_generated_calculation_dto() -> None:
    """Preserve custom entity calculation fields through the generated DTO."""
    import zero_friction  # noqa: F401  # Initialize the unified SDK package.

    assert find_spec("zero_friction.patches") is None

    models_module = import_module(
        "configuration_client.models.billing_calculation_type_parameters_dto"
    )
    item_module = import_module("configuration_client.models.billing_item_dto")
    BillingCalculationTypeParametersDTO = (
        models_module.BillingCalculationTypeParametersDTO
    )
    BillingItemDTO = item_module.BillingItemDTO

    payload = {
        "name": "fixture billing item",
        "calculationParameters": {
            "type": "customentityproperty",
            "customEntityPropertyTypeId": "property-type-fixture",
            "scope": "location",
            "utilityType": "heat",
            "unitOfMeasure": "year",
        },
    }

    dto = BillingItemDTO.from_json(json.dumps(payload))

    assert dto is not None
    assert type(dto.calculation_parameters) is BillingCalculationTypeParametersDTO
    assert dto.calculation_parameters is not None

    serialized = json.dumps(dto.to_dict(), default=str)
    roundtripped = BillingItemDTO.from_json(serialized)

    assert roundtripped is not None
    assert (
        roundtripped.to_dict()["calculationParameters"]
        == payload["calculationParameters"]
    )
