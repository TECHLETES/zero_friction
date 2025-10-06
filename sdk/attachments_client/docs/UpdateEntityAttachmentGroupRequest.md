# UpdateEntityAttachmentGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include_in_welcome_email** | **bool** |  | [optional] 
**visibility** | [**AttachmentVisibility**](AttachmentVisibility.md) |  | [optional] 
**approval_required** | **bool** |  | [optional] 
**valid_from** | **datetime** |  | [optional] 
**valid_until** | **datetime** |  | [optional] 

## Example

```python
from attachments_client.models.update_entity_attachment_group_request import UpdateEntityAttachmentGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateEntityAttachmentGroupRequest from a JSON string
update_entity_attachment_group_request_instance = UpdateEntityAttachmentGroupRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateEntityAttachmentGroupRequest.to_json())

# convert the object into a dict
update_entity_attachment_group_request_dict = update_entity_attachment_group_request_instance.to_dict()
# create an instance of UpdateEntityAttachmentGroupRequest from a dict
update_entity_attachment_group_request_from_dict = UpdateEntityAttachmentGroupRequest.from_dict(update_entity_attachment_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


