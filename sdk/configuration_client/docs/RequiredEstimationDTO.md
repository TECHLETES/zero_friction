# RequiredEstimationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_ids** | **List[str]** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 

## Example

```python
from configuration_client.models.required_estimation_dto import RequiredEstimationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredEstimationDTO from a JSON string
required_estimation_dto_instance = RequiredEstimationDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredEstimationDTO.to_json())

# convert the object into a dict
required_estimation_dto_dict = required_estimation_dto_instance.to_dict()
# create an instance of RequiredEstimationDTO from a dict
required_estimation_dto_from_dict = RequiredEstimationDTO.from_dict(required_estimation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


