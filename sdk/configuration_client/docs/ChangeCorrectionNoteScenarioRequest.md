# ChangeCorrectionNoteScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**pdf_template** | [**CorrectionNotePdfTemplateRequest**](CorrectionNotePdfTemplateRequest.md) |  | [optional] 
**email_template** | [**CorrectionNoteEmailTemplateRequest**](CorrectionNoteEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_correction_note_scenario_request import ChangeCorrectionNoteScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeCorrectionNoteScenarioRequest from a JSON string
change_correction_note_scenario_request_instance = ChangeCorrectionNoteScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeCorrectionNoteScenarioRequest.to_json())

# convert the object into a dict
change_correction_note_scenario_request_dict = change_correction_note_scenario_request_instance.to_dict()
# create an instance of ChangeCorrectionNoteScenarioRequest from a dict
change_correction_note_scenario_request_from_dict = ChangeCorrectionNoteScenarioRequest.from_dict(change_correction_note_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


