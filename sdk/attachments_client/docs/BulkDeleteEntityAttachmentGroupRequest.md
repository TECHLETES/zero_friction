# BulkDeleteEntityAttachmentGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetEntityAttachmentGroupQueryParams**](GetEntityAttachmentGroupQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from attachments_client.models.bulk_delete_entity_attachment_group_request import BulkDeleteEntityAttachmentGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDeleteEntityAttachmentGroupRequest from a JSON string
bulk_delete_entity_attachment_group_request_instance = BulkDeleteEntityAttachmentGroupRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDeleteEntityAttachmentGroupRequest.to_json())

# convert the object into a dict
bulk_delete_entity_attachment_group_request_dict = bulk_delete_entity_attachment_group_request_instance.to_dict()
# create an instance of BulkDeleteEntityAttachmentGroupRequest from a dict
bulk_delete_entity_attachment_group_request_from_dict = BulkDeleteEntityAttachmentGroupRequest.from_dict(bulk_delete_entity_attachment_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


