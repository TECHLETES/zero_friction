# EntityAttachmentGroupOverviewCountDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**EntityAttachmentGroupOverviewCountDTO**](EntityAttachmentGroupOverviewCountDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from attachments_client.models.entity_attachment_group_overview_count_dto_api_response_dto import EntityAttachmentGroupOverviewCountDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EntityAttachmentGroupOverviewCountDTOApiResponseDTO from a JSON string
entity_attachment_group_overview_count_dto_api_response_dto_instance = EntityAttachmentGroupOverviewCountDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(EntityAttachmentGroupOverviewCountDTOApiResponseDTO.to_json())

# convert the object into a dict
entity_attachment_group_overview_count_dto_api_response_dto_dict = entity_attachment_group_overview_count_dto_api_response_dto_instance.to_dict()
# create an instance of EntityAttachmentGroupOverviewCountDTOApiResponseDTO from a dict
entity_attachment_group_overview_count_dto_api_response_dto_from_dict = EntityAttachmentGroupOverviewCountDTOApiResponseDTO.from_dict(entity_attachment_group_overview_count_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


