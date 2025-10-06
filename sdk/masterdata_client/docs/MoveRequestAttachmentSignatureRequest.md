# MoveRequestAttachmentSignatureRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**origin** | [**EntityAttachmentOrigin**](EntityAttachmentOrigin.md) |  | [optional] 
**culture** | **str** |  | [optional] 
**product_attachment_id** | **str** |  | [optional] 
**entity_attachment_group_id** | **str** |  | [optional] 
**sign_date** | **datetime** |  | [optional] 
**viewed_date** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.move_request_attachment_signature_request import MoveRequestAttachmentSignatureRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestAttachmentSignatureRequest from a JSON string
move_request_attachment_signature_request_instance = MoveRequestAttachmentSignatureRequest.from_json(json)
# print the JSON string representation of the object
print(MoveRequestAttachmentSignatureRequest.to_json())

# convert the object into a dict
move_request_attachment_signature_request_dict = move_request_attachment_signature_request_instance.to_dict()
# create an instance of MoveRequestAttachmentSignatureRequest from a dict
move_request_attachment_signature_request_from_dict = MoveRequestAttachmentSignatureRequest.from_dict(move_request_attachment_signature_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


