# MoveRequestDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**MoveRequestDTO**](MoveRequestDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestDTOApiResponseDTO from a JSON string
move_request_dto_api_response_dto_instance = MoveRequestDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(MoveRequestDTOApiResponseDTO.to_json())

# convert the object into a dict
move_request_dto_api_response_dto_dict = move_request_dto_api_response_dto_instance.to_dict()
# create an instance of MoveRequestDTOApiResponseDTO from a dict
move_request_dto_api_response_dto_from_dict = MoveRequestDTOApiResponseDTO.from_dict(move_request_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


