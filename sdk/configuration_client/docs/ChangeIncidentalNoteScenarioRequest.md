# ChangeIncidentalNoteScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**pdf_template** | [**IncidentalNotePdfTemplateRequest**](IncidentalNotePdfTemplateRequest.md) |  | [optional] 
**email_template** | [**IncidentalNoteEmailTemplateRequest**](IncidentalNoteEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_incidental_note_scenario_request import ChangeIncidentalNoteScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeIncidentalNoteScenarioRequest from a JSON string
change_incidental_note_scenario_request_instance = ChangeIncidentalNoteScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeIncidentalNoteScenarioRequest.to_json())

# convert the object into a dict
change_incidental_note_scenario_request_dict = change_incidental_note_scenario_request_instance.to_dict()
# create an instance of ChangeIncidentalNoteScenarioRequest from a dict
change_incidental_note_scenario_request_from_dict = ChangeIncidentalNoteScenarioRequest.from_dict(change_incidental_note_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


