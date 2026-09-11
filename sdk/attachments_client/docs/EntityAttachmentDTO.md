# EntityAttachmentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional]
**origin** | [**EntityAttachmentOrigin**](EntityAttachmentOrigin.md) |  | [optional]
**parameters** | [**BaseEntityReferenceParametersDTO**](BaseEntityReferenceParametersDTO.md) |  | [optional]
**visibility** | [**AttachmentVisibility**](AttachmentVisibility.md) |  | [optional]
**include_in_welcome_email** | **bool** |  | [optional]
**approval_required** | **bool** |  | [optional]
**viewed_date_time** | **datetime** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

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
