# ChangeReminderScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pdf_template** | [**ReminderPdfTemplateRequest**](ReminderPdfTemplateRequest.md) |  | [optional] 
**email_template** | [**ReminderEmailTemplateRequest**](ReminderEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_reminder_scenario_request import ChangeReminderScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeReminderScenarioRequest from a JSON string
change_reminder_scenario_request_instance = ChangeReminderScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeReminderScenarioRequest.to_json())

# convert the object into a dict
change_reminder_scenario_request_dict = change_reminder_scenario_request_instance.to_dict()
# create an instance of ChangeReminderScenarioRequest from a dict
change_reminder_scenario_request_from_dict = ChangeReminderScenarioRequest.from_dict(change_reminder_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


