# RequiredQuantityDTORequiredConsumptionQuantityDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional]
**direction** | [**Direction**](Direction.md) |  | [optional]
**receiving_periods** | [**List[ConsumptionReceivingPeriodDTO]**](ConsumptionReceivingPeriodDTO.md) |  | [optional]
**asking_periods** | [**List[ConsumptionAskingPeriodDTO]**](ConsumptionAskingPeriodDTO.md) |  | [optional]
**tariff_reference_asking_periods** | [**List[ConsumptionAskingPeriodDTO]**](ConsumptionAskingPeriodDTO.md) |  | [optional]
**tariff_reference_receiving_periods** | [**List[ConsumptionReceivingPeriodDTO]**](ConsumptionReceivingPeriodDTO.md) |  | [optional]
**billing_item_id** | **str** |  | [optional]
**service_location_id** | **str** |  | [optional]
**complete** | **bool** |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**validation_errors** | [**List[RequiredQuantityValidationErrorDTO]**](RequiredQuantityValidationErrorDTO.md) |  | [optional]

## Example

```python
from billing_client.models.required_quantity_dto_required_consumption_quantity_dto import RequiredQuantityDTORequiredConsumptionQuantityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredQuantityDTORequiredConsumptionQuantityDTO from a JSON string
required_quantity_dto_required_consumption_quantity_dto_instance = RequiredQuantityDTORequiredConsumptionQuantityDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredQuantityDTORequiredConsumptionQuantityDTO.to_json())

# convert the object into a dict
required_quantity_dto_required_consumption_quantity_dto_dict = required_quantity_dto_required_consumption_quantity_dto_instance.to_dict()
# create an instance of RequiredQuantityDTORequiredConsumptionQuantityDTO from a dict
required_quantity_dto_required_consumption_quantity_dto_from_dict = RequiredQuantityDTORequiredConsumptionQuantityDTO.from_dict(required_quantity_dto_required_consumption_quantity_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
