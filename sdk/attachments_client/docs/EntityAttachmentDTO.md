# EntityAttachmentDTO


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
**customer_id** | **str** |  | [optional] 
**origin** | [**EntityAttachmentOrigin**](EntityAttachmentOrigin.md) |  | [optional] 
**parameters** | **object** |  | [optional] 
**visibility** | [**AttachmentVisibility**](AttachmentVisibility.md) |  | [optional] 
**include_in_welcome_email** | **bool** |  | [optional] 
**approval_required** | **bool** |  | [optional] 
**viewed_date_time** | **datetime** |  | [optional] 

## Example

```python
from attachments_client.models.entity_attachment_dto import EntityAttachmentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EntityAttachmentDTO from a JSON string
entity_attachment_dto_instance = EntityAttachmentDTO.from_json(json)
# print the JSON string representation of the object
print(EntityAttachmentDTO.to_json())

# convert the object into a dict
entity_attachment_dto_dict = entity_attachment_dto_instance.to_dict()
# create an instance of EntityAttachmentDTO from a dict
entity_attachment_dto_from_dict = EntityAttachmentDTO.from_dict(entity_attachment_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


