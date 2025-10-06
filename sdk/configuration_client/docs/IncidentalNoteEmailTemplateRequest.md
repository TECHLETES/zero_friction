# IncidentalNoteEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.incidental_note_email_template_request import IncidentalNoteEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IncidentalNoteEmailTemplateRequest from a JSON string
incidental_note_email_template_request_instance = IncidentalNoteEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(IncidentalNoteEmailTemplateRequest.to_json())

# convert the object into a dict
incidental_note_email_template_request_dict = incidental_note_email_template_request_instance.to_dict()
# create an instance of IncidentalNoteEmailTemplateRequest from a dict
incidental_note_email_template_request_from_dict = IncidentalNoteEmailTemplateRequest.from_dict(incidental_note_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


