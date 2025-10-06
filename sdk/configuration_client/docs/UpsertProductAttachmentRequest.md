# UpsertProductAttachmentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_attachment_id** | **str** |  | [optional] 
**include_in_welcome_email** | **bool** |  | [optional] 
**visibility** | [**AttachmentVisibility**](AttachmentVisibility.md) |  | [optional] 
**approval_required** | **bool** |  | [optional] 
**valid_from** | **datetime** |  | [optional] 
**valid_until** | **datetime** |  | [optional] 
**attachment_files** | [**List[UpsertProductAttachmentFileRequest]**](UpsertProductAttachmentFileRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.upsert_product_attachment_request import UpsertProductAttachmentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpsertProductAttachmentRequest from a JSON string
upsert_product_attachment_request_instance = UpsertProductAttachmentRequest.from_json(json)
# print the JSON string representation of the object
print(UpsertProductAttachmentRequest.to_json())

# convert the object into a dict
upsert_product_attachment_request_dict = upsert_product_attachment_request_instance.to_dict()
# create an instance of UpsertProductAttachmentRequest from a dict
upsert_product_attachment_request_from_dict = UpsertProductAttachmentRequest.from_dict(upsert_product_attachment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


