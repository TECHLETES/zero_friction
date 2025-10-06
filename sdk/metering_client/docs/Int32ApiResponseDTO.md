# Int32ApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | **int** | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.int32_api_response_dto import Int32ApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of Int32ApiResponseDTO from a JSON string
int32_api_response_dto_instance = Int32ApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(Int32ApiResponseDTO.to_json())

# convert the object into a dict
int32_api_response_dto_dict = int32_api_response_dto_instance.to_dict()
# create an instance of Int32ApiResponseDTO from a dict
int32_api_response_dto_from_dict = Int32ApiResponseDTO.from_dict(int32_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


