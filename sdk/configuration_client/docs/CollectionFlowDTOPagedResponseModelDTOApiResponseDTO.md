# CollectionFlowDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CollectionFlowDTOPagedResponseModelDTO**](CollectionFlowDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.collection_flow_dto_paged_response_model_dto_api_response_dto import CollectionFlowDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionFlowDTOPagedResponseModelDTOApiResponseDTO from a JSON string
collection_flow_dto_paged_response_model_dto_api_response_dto_instance = CollectionFlowDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionFlowDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
collection_flow_dto_paged_response_model_dto_api_response_dto_dict = collection_flow_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of CollectionFlowDTOPagedResponseModelDTOApiResponseDTO from a dict
collection_flow_dto_paged_response_model_dto_api_response_dto_from_dict = CollectionFlowDTOPagedResponseModelDTOApiResponseDTO.from_dict(collection_flow_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


