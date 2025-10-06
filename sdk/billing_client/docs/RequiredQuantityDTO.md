# RequiredQuantityDTO

Base class for all required quantity types in billing completeness

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_id** | **str** | Unique identifier of the billing item | [optional] 
**service_location_id** | **str** | Unique identifier of the service location | [optional] 
**calculation_group_id** | **str** | Unique identifier of the calculation group | [optional] 
**complete** | **bool** | Indicates if all required data is complete | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) | List of localized error messages | [optional] 
**validation_errors** | [**List[RequiredQuantityValidationErrorDTO]**](RequiredQuantityValidationErrorDTO.md) | List of validation errors for this quantity | [optional] 

## Example

```python
from billing_client.models.required_quantity_dto import RequiredQuantityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredQuantityDTO from a JSON string
required_quantity_dto_instance = RequiredQuantityDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredQuantityDTO.to_json())

# convert the object into a dict
required_quantity_dto_dict = required_quantity_dto_instance.to_dict()
# create an instance of RequiredQuantityDTO from a dict
required_quantity_dto_from_dict = RequiredQuantityDTO.from_dict(required_quantity_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


