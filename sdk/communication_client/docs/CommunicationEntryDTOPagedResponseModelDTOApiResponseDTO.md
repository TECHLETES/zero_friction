# CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CommunicationEntryDTOPagedResponseModelDTO**](CommunicationEntryDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from communication_client.models.communication_entry_dto_paged_response_model_dto_api_response_dto import CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO from a JSON string
communication_entry_dto_paged_response_model_dto_api_response_dto_instance = CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
communication_entry_dto_paged_response_model_dto_api_response_dto_dict = communication_entry_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO from a dict
communication_entry_dto_paged_response_model_dto_api_response_dto_from_dict = CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO.from_dict(communication_entry_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


