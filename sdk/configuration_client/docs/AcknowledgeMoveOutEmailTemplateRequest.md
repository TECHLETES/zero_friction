# AcknowledgeMoveOutEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.acknowledge_move_out_email_template_request import AcknowledgeMoveOutEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AcknowledgeMoveOutEmailTemplateRequest from a JSON string
acknowledge_move_out_email_template_request_instance = AcknowledgeMoveOutEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(AcknowledgeMoveOutEmailTemplateRequest.to_json())

# convert the object into a dict
acknowledge_move_out_email_template_request_dict = acknowledge_move_out_email_template_request_instance.to_dict()
# create an instance of AcknowledgeMoveOutEmailTemplateRequest from a dict
acknowledge_move_out_email_template_request_from_dict = AcknowledgeMoveOutEmailTemplateRequest.from_dict(acknowledge_move_out_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


