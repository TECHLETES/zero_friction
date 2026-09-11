# ApiResponseDTOOfCostComponentValueDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**CostComponentValueDTO**](CostComponentValueDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.api_response_dtoof_cost_component_value_dto import ApiResponseDTOOfCostComponentValueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfCostComponentValueDTO from a JSON string
api_response_dtoof_cost_component_value_dto_instance = ApiResponseDTOOfCostComponentValueDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfCostComponentValueDTO.to_json())

# convert the object into a dict
api_response_dtoof_cost_component_value_dto_dict = api_response_dtoof_cost_component_value_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfCostComponentValueDTO from a dict
api_response_dtoof_cost_component_value_dto_from_dict = ApiResponseDTOOfCostComponentValueDTO.from_dict(api_response_dtoof_cost_component_value_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


