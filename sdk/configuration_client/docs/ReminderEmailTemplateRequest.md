# ReminderEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.reminder_email_template_request import ReminderEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReminderEmailTemplateRequest from a JSON string
reminder_email_template_request_instance = ReminderEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(ReminderEmailTemplateRequest.to_json())

# convert the object into a dict
reminder_email_template_request_dict = reminder_email_template_request_instance.to_dict()
# create an instance of ReminderEmailTemplateRequest from a dict
reminder_email_template_request_from_dict = ReminderEmailTemplateRequest.from_dict(reminder_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


