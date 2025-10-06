# EntityAttachmentGroupDTO


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
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**entity_subject_id** | **str** |  | [optional] 
**entity_subject_display_name** | **str** |  | [optional] 
**localised_attachment_files** | [**List[EntityAttachmentFileDTO]**](EntityAttachmentFileDTO.md) |  | [optional] 
**include_in_welcome_email** | **bool** |  | [optional] 
**visibility** | [**AttachmentVisibility**](AttachmentVisibility.md) |  | [optional] 
**approval_required** | **bool** |  | [optional] 
**validity** | [**DateRange**](DateRange.md) |  | [optional] 

## Example

```python
from attachments_client.models.entity_attachment_group_dto import EntityAttachmentGroupDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EntityAttachmentGroupDTO from a JSON string
entity_attachment_group_dto_instance = EntityAttachmentGroupDTO.from_json(json)
# print the JSON string representation of the object
print(EntityAttachmentGroupDTO.to_json())

# convert the object into a dict
entity_attachment_group_dto_dict = entity_attachment_group_dto_instance.to_dict()
# create an instance of EntityAttachmentGroupDTO from a dict
entity_attachment_group_dto_from_dict = EntityAttachmentGroupDTO.from_dict(entity_attachment_group_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


