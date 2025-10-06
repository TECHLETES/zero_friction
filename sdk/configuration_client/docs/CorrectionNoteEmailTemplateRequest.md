# CorrectionNoteEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.correction_note_email_template_request import CorrectionNoteEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CorrectionNoteEmailTemplateRequest from a JSON string
correction_note_email_template_request_instance = CorrectionNoteEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(CorrectionNoteEmailTemplateRequest.to_json())

# convert the object into a dict
correction_note_email_template_request_dict = correction_note_email_template_request_instance.to_dict()
# create an instance of CorrectionNoteEmailTemplateRequest from a dict
correction_note_email_template_request_from_dict = CorrectionNoteEmailTemplateRequest.from_dict(correction_note_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


