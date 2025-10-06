# ChangeEndNoteScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**pdf_template** | [**EndNotePdfTemplateRequest**](EndNotePdfTemplateRequest.md) |  | [optional] 
**email_template** | [**EndNoteEmailTemplateRequest**](EndNoteEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_end_note_scenario_request import ChangeEndNoteScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeEndNoteScenarioRequest from a JSON string
change_end_note_scenario_request_instance = ChangeEndNoteScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeEndNoteScenarioRequest.to_json())

# convert the object into a dict
change_end_note_scenario_request_dict = change_end_note_scenario_request_instance.to_dict()
# create an instance of ChangeEndNoteScenarioRequest from a dict
change_end_note_scenario_request_from_dict = ChangeEndNoteScenarioRequest.from_dict(change_end_note_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


