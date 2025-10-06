# AttachmentSignature


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**culture** | **str** |  | [optional] 
**attachment_file_name** | **str** |  | [optional] 
**error_code** | [**ErrorCode**](ErrorCode.md) |  | [optional] 
**origin** | [**EntityAttachmentOrigin**](EntityAttachmentOrigin.md) |  | [optional] 
**product_attachment_id** | **str** |  | [optional] 
**attachment_file_id** | **str** |  | [optional] 
**entity_attachment_group_id** | **str** |  | [optional] 
**sign_date** | **datetime** |  | [optional] 
**viewed_date** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.attachment_signature import AttachmentSignature

# TODO update the JSON string below
json = "{}"
# create an instance of AttachmentSignature from a JSON string
attachment_signature_instance = AttachmentSignature.from_json(json)
# print the JSON string representation of the object
print(AttachmentSignature.to_json())

# convert the object into a dict
attachment_signature_dict = attachment_signature_instance.to_dict()
# create an instance of AttachmentSignature from a dict
attachment_signature_from_dict = AttachmentSignature.from_dict(attachment_signature_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


