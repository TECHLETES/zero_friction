# AttachmentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**description** | **str** |  | [optional] 
**subject_type** | **str** |  | [optional] 
**user_id** | **str** |  | [optional] 
**file_name** | **str** |  | [optional] 
**internal_file_path** | **str** |  | [optional] 

## Example

```python
from attachments_client.models.attachment_dto import AttachmentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AttachmentDTO from a JSON string
attachment_dto_instance = AttachmentDTO.from_json(json)
# print the JSON string representation of the object
print(AttachmentDTO.to_json())

# convert the object into a dict
attachment_dto_dict = attachment_dto_instance.to_dict()
# create an instance of AttachmentDTO from a dict
attachment_dto_from_dict = AttachmentDTO.from_dict(attachment_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


