# ApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from forecasting_client.models.api_response_dto import ApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTO from a JSON string
api_response_dto_instance = ApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTO.to_json())

# convert the object into a dict
api_response_dto_dict = api_response_dto_instance.to_dict()
# create an instance of ApiResponseDTO from a dict
api_response_dto_from_dict = ApiResponseDTO.from_dict(api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


