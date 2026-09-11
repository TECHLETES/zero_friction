# RequiredQuantityDTORequiredCustomEntityPropertyQuantityDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**custom_entity_property_type_id** | **str** |  | [optional]
**receiving_periods** | [**List[CustomEntityPropertyReceivingPeriodDTO]**](CustomEntityPropertyReceivingPeriodDTO.md) |  | [optional]
**asking_periods** | [**List[CustomEntityPropertyAskingPeriodDTO]**](CustomEntityPropertyAskingPeriodDTO.md) |  | [optional]
**tariff_reference_asking_periods** | [**List[CustomEntityPropertyAskingPeriodDTO]**](CustomEntityPropertyAskingPeriodDTO.md) |  | [optional]
**tariff_reference_receiving_periods** | [**List[CustomEntityPropertyReceivingPeriodDTO]**](CustomEntityPropertyReceivingPeriodDTO.md) |  | [optional]
**billing_item_id** | **str** |  | [optional]
**service_location_id** | **str** |  | [optional]
**complete** | **bool** |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**validation_errors** | [**List[RequiredQuantityValidationErrorDTO]**](RequiredQuantityValidationErrorDTO.md) |  | [optional]

## Example

```python
from billing_client.models.required_quantity_dto_required_custom_entity_property_quantity_dto import RequiredQuantityDTORequiredCustomEntityPropertyQuantityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredQuantityDTORequiredCustomEntityPropertyQuantityDTO from a JSON string
required_quantity_dto_required_custom_entity_property_quantity_dto_instance = RequiredQuantityDTORequiredCustomEntityPropertyQuantityDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredQuantityDTORequiredCustomEntityPropertyQuantityDTO.to_json())

# convert the object into a dict
required_quantity_dto_required_custom_entity_property_quantity_dto_dict = required_quantity_dto_required_custom_entity_property_quantity_dto_instance.to_dict()
# create an instance of RequiredQuantityDTORequiredCustomEntityPropertyQuantityDTO from a dict
required_quantity_dto_required_custom_entity_property_quantity_dto_from_dict = RequiredQuantityDTORequiredCustomEntityPropertyQuantityDTO.from_dict(required_quantity_dto_required_custom_entity_property_quantity_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
