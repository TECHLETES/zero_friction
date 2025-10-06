# AdvanceAmountChangedEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.advance_amount_changed_email_template_request import AdvanceAmountChangedEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdvanceAmountChangedEmailTemplateRequest from a JSON string
advance_amount_changed_email_template_request_instance = AdvanceAmountChangedEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(AdvanceAmountChangedEmailTemplateRequest.to_json())

# convert the object into a dict
advance_amount_changed_email_template_request_dict = advance_amount_changed_email_template_request_instance.to_dict()
# create an instance of AdvanceAmountChangedEmailTemplateRequest from a dict
advance_amount_changed_email_template_request_from_dict = AdvanceAmountChangedEmailTemplateRequest.from_dict(advance_amount_changed_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


