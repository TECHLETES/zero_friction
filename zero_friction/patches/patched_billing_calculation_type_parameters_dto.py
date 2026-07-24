"""Pydantic DTO patch for billing calculation type parameters."""

from typing import Any, cast

from configuration_client.models.billing_calculation_type import BillingCalculationType
from configuration_client.models.billing_calculation_type_parameters_dto import (
    BillingCalculationTypeParametersDTO as _Base,
)
from configuration_client.models.unit_of_measure import UnitOfMeasure
from pydantic import ConfigDict, Field


class PatchedBillingCalculationTypeParametersDTO(_Base):
    """Accept and serialize additional fields returned by the live API."""

    # re-declare existing fields (keeps aliases/typing explicit)
    unit_of_measure: UnitOfMeasure = Field(alias="unitOfMeasure")
    billing_calculation_type: BillingCalculationType | None = Field(
        default=None, alias="billingCalculationType"
    )

    # add explicit fields seen in live responses
    type: str | None = None
    custom_entity_property_type_id: str | None = Field(
        default=None, alias="customEntityPropertyTypeId"
    )
    scope: str | None = None
    utility_type: str | None = Field(default=None, alias="utilityType")

    # strict: only declared fields are allowed
    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
        extra="allow",
    )

    def to_dict(self) -> dict[str, Any]:
        """Serialize the DTO using API field aliases."""
        return cast(dict[str, Any], self.model_dump(by_alias=True, exclude_none=True))

    @classmethod
    def from_dict(
        cls, obj: dict[str, Any]
    ) -> "PatchedBillingCalculationTypeParametersDTO":
        """Create a DTO from a response dictionary."""
        return cast(
            "PatchedBillingCalculationTypeParametersDTO", cls.model_validate(obj)
        )
