# UpsertProductAttachmentFileRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | 
**file_name** | **str** |  | 
**internal_file_name** | **str** |  | [optional] 
**attachment_id** | **str** |  | 

## Example

```python
from configuration_client.models.upsert_product_attachment_file_request import UpsertProductAttachmentFileRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpsertProductAttachmentFileRequest from a JSON string
upsert_product_attachment_file_request_instance = UpsertProductAttachmentFileRequest.from_json(json)
# print the JSON string representation of the object
print(UpsertProductAttachmentFileRequest.to_json())

# convert the object into a dict
upsert_product_attachment_file_request_dict = upsert_product_attachment_file_request_instance.to_dict()
# create an instance of UpsertProductAttachmentFileRequest from a dict
upsert_product_attachment_file_request_from_dict = UpsertProductAttachmentFileRequest.from_dict(upsert_product_attachment_file_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


