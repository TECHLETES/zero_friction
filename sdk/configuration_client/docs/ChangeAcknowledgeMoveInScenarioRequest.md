# ChangeAcknowledgeMoveInScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**email_template** | [**AcknowledgeMoveInEmailTemplateRequest**](AcknowledgeMoveInEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_acknowledge_move_in_scenario_request import ChangeAcknowledgeMoveInScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeAcknowledgeMoveInScenarioRequest from a JSON string
change_acknowledge_move_in_scenario_request_instance = ChangeAcknowledgeMoveInScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeAcknowledgeMoveInScenarioRequest.to_json())

# convert the object into a dict
change_acknowledge_move_in_scenario_request_dict = change_acknowledge_move_in_scenario_request_instance.to_dict()
# create an instance of ChangeAcknowledgeMoveInScenarioRequest from a dict
change_acknowledge_move_in_scenario_request_from_dict = ChangeAcknowledgeMoveInScenarioRequest.from_dict(change_acknowledge_move_in_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


