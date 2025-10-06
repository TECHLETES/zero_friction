# CreditNoteEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.credit_note_email_template_request import CreditNoteEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreditNoteEmailTemplateRequest from a JSON string
credit_note_email_template_request_instance = CreditNoteEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(CreditNoteEmailTemplateRequest.to_json())

# convert the object into a dict
credit_note_email_template_request_dict = credit_note_email_template_request_instance.to_dict()
# create an instance of CreditNoteEmailTemplateRequest from a dict
credit_note_email_template_request_from_dict = CreditNoteEmailTemplateRequest.from_dict(credit_note_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


