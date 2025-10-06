# RejectMoveOutEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.reject_move_out_email_template_request import RejectMoveOutEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RejectMoveOutEmailTemplateRequest from a JSON string
reject_move_out_email_template_request_instance = RejectMoveOutEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(RejectMoveOutEmailTemplateRequest.to_json())

# convert the object into a dict
reject_move_out_email_template_request_dict = reject_move_out_email_template_request_instance.to_dict()
# create an instance of RejectMoveOutEmailTemplateRequest from a dict
reject_move_out_email_template_request_from_dict = RejectMoveOutEmailTemplateRequest.from_dict(reject_move_out_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


