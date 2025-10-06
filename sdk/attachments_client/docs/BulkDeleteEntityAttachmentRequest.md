# BulkDeleteEntityAttachmentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetEntityAttachmentQueryParams**](GetEntityAttachmentQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from attachments_client.models.bulk_delete_entity_attachment_request import BulkDeleteEntityAttachmentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDeleteEntityAttachmentRequest from a JSON string
bulk_delete_entity_attachment_request_instance = BulkDeleteEntityAttachmentRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDeleteEntityAttachmentRequest.to_json())

# convert the object into a dict
bulk_delete_entity_attachment_request_dict = bulk_delete_entity_attachment_request_instance.to_dict()
# create an instance of BulkDeleteEntityAttachmentRequest from a dict
bulk_delete_entity_attachment_request_from_dict = BulkDeleteEntityAttachmentRequest.from_dict(bulk_delete_entity_attachment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


