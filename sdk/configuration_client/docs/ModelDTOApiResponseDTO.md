# ModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ModelDTO**](ModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.model_dto_api_response_dto import ModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ModelDTOApiResponseDTO from a JSON string
model_dto_api_response_dto_instance = ModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ModelDTOApiResponseDTO.to_json())

# convert the object into a dict
model_dto_api_response_dto_dict = model_dto_api_response_dto_instance.to_dict()
# create an instance of ModelDTOApiResponseDTO from a dict
model_dto_api_response_dto_from_dict = ModelDTOApiResponseDTO.from_dict(model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


