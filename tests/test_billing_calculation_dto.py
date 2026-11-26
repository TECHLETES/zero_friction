"""Tests for generated billing calculation DTO parsing and serialization."""

import json

from configuration_client.models.billing_calculation_type_parameters_dto import (
    BillingCalculationTypeParametersDTO,
)
from configuration_client.models.billing_item_dto import BillingItemDTO

import zero_friction  # noqa: F401  # Apply SDK runtime patches before DTO imports.


def test_billing_item_roundtrip_uses_generated_calculation_dto() -> None:
    """Preserve custom entity calculation fields through the generated DTO."""
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
    assert (
        BillingCalculationTypeParametersDTO.__module__
        == "configuration_client.models.billing_calculation_type_parameters_dto"
    )
    assert dto.calculation_parameters is not None

    serialized = json.dumps(dto.to_dict(), default=str)
    roundtripped = BillingItemDTO.from_json(serialized)

    assert roundtripped is not None
    assert (
        roundtripped.to_dict()["calculationParameters"]
        == payload["calculationParameters"]
    )
