from pydantic import BaseModel, ConfigDict, Field
from typing import Optional, Any, Dict

from configuration_client.models.unit_of_measure import UnitOfMeasure
from configuration_client.models.billing_calculation_type import BillingCalculationType
from configuration_client.models.billing_calculation_type_parameters_dto import BillingCalculationTypeParametersDTO as _Base
from configuration_client.models.unit_of_measure import UnitOfMeasure
from configuration_client.models.billing_calculation_type import BillingCalculationType

class PatchedBillingCalculationTypeParametersDTO(_Base):
    # re-declare existing fields (keeps aliases/typing explicit)
    unit_of_measure: UnitOfMeasure = Field(alias="unitOfMeasure")
    billing_calculation_type: Optional[BillingCalculationType] = Field(
        default=None, alias="billingCalculationType"
    )

    # add explicit fields seen in live responses
    type: Optional[str] = None
    custom_entity_property_type_id: Optional[str] = Field(
        default=None, alias="customEntityPropertyTypeId"
    )
    scope: Optional[str] = None
    utility_type: Optional[str] = Field(default=None, alias="utilityType")

    # strict: only declared fields are allowed
    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
        extra="allow",
    )

    def to_dict(self) -> Dict[str, Any]:
        return self.model_dump(by_alias=True, exclude_none=True)

    @classmethod
    def from_dict(cls, obj: Dict[str, Any]) -> "PatchedBillingCalculationTypeParametersDTO":
        return cls.model_validate(obj)