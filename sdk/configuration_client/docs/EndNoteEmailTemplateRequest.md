# EndNoteEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.end_note_email_template_request import EndNoteEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EndNoteEmailTemplateRequest from a JSON string
end_note_email_template_request_instance = EndNoteEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(EndNoteEmailTemplateRequest.to_json())

# convert the object into a dict
end_note_email_template_request_dict = end_note_email_template_request_instance.to_dict()
# create an instance of EndNoteEmailTemplateRequest from a dict
end_note_email_template_request_from_dict = EndNoteEmailTemplateRequest.from_dict(end_note_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


