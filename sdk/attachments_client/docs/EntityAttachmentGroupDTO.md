# EntityAttachmentGroupDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**entity_subject_id** | **str** |  | [optional]
**entity_subject_display_name** | **str** |  | [optional]
**localised_attachment_files** | [**List[EntityAttachmentFileDTO]**](EntityAttachmentFileDTO.md) |  | [optional]
**include_in_welcome_email** | **bool** |  | [optional]
**visibility** | [**AttachmentVisibility**](AttachmentVisibility.md) |  | [optional]
**approval_required** | **bool** |  | [optional]
**validity** | [**DateRange**](DateRange.md) |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

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
