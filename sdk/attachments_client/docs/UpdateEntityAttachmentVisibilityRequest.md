# UpdateEntityAttachmentVisibilityRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**visibility** | [**AttachmentVisibility**](AttachmentVisibility.md) |  | [optional] 

## Example

```python
from attachments_client.models.update_entity_attachment_visibility_request import UpdateEntityAttachmentVisibilityRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateEntityAttachmentVisibilityRequest from a JSON string
update_entity_attachment_visibility_request_instance = UpdateEntityAttachmentVisibilityRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateEntityAttachmentVisibilityRequest.to_json())

# convert the object into a dict
update_entity_attachment_visibility_request_dict = update_entity_attachment_visibility_request_instance.to_dict()
# create an instance of UpdateEntityAttachmentVisibilityRequest from a dict
update_entity_attachment_visibility_request_from_dict = UpdateEntityAttachmentVisibilityRequest.from_dict(update_entity_attachment_visibility_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


