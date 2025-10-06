# ReminderPdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional] 
**show_country** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.reminder_pdf_template_request import ReminderPdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReminderPdfTemplateRequest from a JSON string
reminder_pdf_template_request_instance = ReminderPdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(ReminderPdfTemplateRequest.to_json())

# convert the object into a dict
reminder_pdf_template_request_dict = reminder_pdf_template_request_instance.to_dict()
# create an instance of ReminderPdfTemplateRequest from a dict
reminder_pdf_template_request_from_dict = ReminderPdfTemplateRequest.from_dict(reminder_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


