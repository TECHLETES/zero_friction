# RejectMoveInEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.reject_move_in_email_template_request import RejectMoveInEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RejectMoveInEmailTemplateRequest from a JSON string
reject_move_in_email_template_request_instance = RejectMoveInEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(RejectMoveInEmailTemplateRequest.to_json())

# convert the object into a dict
reject_move_in_email_template_request_dict = reject_move_in_email_template_request_instance.to_dict()
# create an instance of RejectMoveInEmailTemplateRequest from a dict
reject_move_in_email_template_request_from_dict = RejectMoveInEmailTemplateRequest.from_dict(reject_move_in_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


