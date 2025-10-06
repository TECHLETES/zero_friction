# StringListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | **List[str]** | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.string_list_api_response_dto import StringListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of StringListApiResponseDTO from a JSON string
string_list_api_response_dto_instance = StringListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(StringListApiResponseDTO.to_json())

# convert the object into a dict
string_list_api_response_dto_dict = string_list_api_response_dto_instance.to_dict()
# create an instance of StringListApiResponseDTO from a dict
string_list_api_response_dto_from_dict = StringListApiResponseDTO.from_dict(string_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


