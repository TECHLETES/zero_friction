# FunctionDescriptionDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[FunctionDescriptionDTO]**](FunctionDescriptionDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.function_description_dto_list_api_response_dto import FunctionDescriptionDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FunctionDescriptionDTOListApiResponseDTO from a JSON string
function_description_dto_list_api_response_dto_instance = FunctionDescriptionDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(FunctionDescriptionDTOListApiResponseDTO.to_json())

# convert the object into a dict
function_description_dto_list_api_response_dto_dict = function_description_dto_list_api_response_dto_instance.to_dict()
# create an instance of FunctionDescriptionDTOListApiResponseDTO from a dict
function_description_dto_list_api_response_dto_from_dict = FunctionDescriptionDTOListApiResponseDTO.from_dict(function_description_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


