# AttachmentDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**AttachmentDTO**](AttachmentDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from attachments_client.models.attachment_dto_api_response_dto import AttachmentDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AttachmentDTOApiResponseDTO from a JSON string
attachment_dto_api_response_dto_instance = AttachmentDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(AttachmentDTOApiResponseDTO.to_json())

# convert the object into a dict
attachment_dto_api_response_dto_dict = attachment_dto_api_response_dto_instance.to_dict()
# create an instance of AttachmentDTOApiResponseDTO from a dict
attachment_dto_api_response_dto_from_dict = AttachmentDTOApiResponseDTO.from_dict(attachment_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


