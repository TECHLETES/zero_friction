# AcknowledgeMoveInEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.acknowledge_move_in_email_template_request import AcknowledgeMoveInEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AcknowledgeMoveInEmailTemplateRequest from a JSON string
acknowledge_move_in_email_template_request_instance = AcknowledgeMoveInEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(AcknowledgeMoveInEmailTemplateRequest.to_json())

# convert the object into a dict
acknowledge_move_in_email_template_request_dict = acknowledge_move_in_email_template_request_instance.to_dict()
# create an instance of AcknowledgeMoveInEmailTemplateRequest from a dict
acknowledge_move_in_email_template_request_from_dict = AcknowledgeMoveInEmailTemplateRequest.from_dict(acknowledge_move_in_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


