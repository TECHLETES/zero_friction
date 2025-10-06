# EntityAttachmentFileDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_name** | **str** |  | [optional] 
**localised_file_name** | **str** |  | [optional] 
**culture** | [**CultureInfo**](CultureInfo.md) |  | [optional] 

## Example

```python
from attachments_client.models.entity_attachment_file_dto import EntityAttachmentFileDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EntityAttachmentFileDTO from a JSON string
entity_attachment_file_dto_instance = EntityAttachmentFileDTO.from_json(json)
# print the JSON string representation of the object
print(EntityAttachmentFileDTO.to_json())

# convert the object into a dict
entity_attachment_file_dto_dict = entity_attachment_file_dto_instance.to_dict()
# create an instance of EntityAttachmentFileDTO from a dict
entity_attachment_file_dto_from_dict = EntityAttachmentFileDTO.from_dict(entity_attachment_file_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


