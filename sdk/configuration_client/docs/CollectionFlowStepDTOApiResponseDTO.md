# CollectionFlowStepDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CollectionFlowStepDTO**](CollectionFlowStepDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.collection_flow_step_dto_api_response_dto import CollectionFlowStepDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionFlowStepDTOApiResponseDTO from a JSON string
collection_flow_step_dto_api_response_dto_instance = CollectionFlowStepDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionFlowStepDTOApiResponseDTO.to_json())

# convert the object into a dict
collection_flow_step_dto_api_response_dto_dict = collection_flow_step_dto_api_response_dto_instance.to_dict()
# create an instance of CollectionFlowStepDTOApiResponseDTO from a dict
collection_flow_step_dto_api_response_dto_from_dict = CollectionFlowStepDTOApiResponseDTO.from_dict(collection_flow_step_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


