# DeleteEntityAttachmentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 

## Example

```python
from attachments_client.models.delete_entity_attachment_request import DeleteEntityAttachmentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteEntityAttachmentRequest from a JSON string
delete_entity_attachment_request_instance = DeleteEntityAttachmentRequest.from_json(json)
# print the JSON string representation of the object
print(DeleteEntityAttachmentRequest.to_json())

# convert the object into a dict
delete_entity_attachment_request_dict = delete_entity_attachment_request_instance.to_dict()
# create an instance of DeleteEntityAttachmentRequest from a dict
delete_entity_attachment_request_from_dict = DeleteEntityAttachmentRequest.from_dict(delete_entity_attachment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


