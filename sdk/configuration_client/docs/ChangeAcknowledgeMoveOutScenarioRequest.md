# ChangeAcknowledgeMoveOutScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**email_template** | [**AcknowledgeMoveOutEmailTemplateRequest**](AcknowledgeMoveOutEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_acknowledge_move_out_scenario_request import ChangeAcknowledgeMoveOutScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeAcknowledgeMoveOutScenarioRequest from a JSON string
change_acknowledge_move_out_scenario_request_instance = ChangeAcknowledgeMoveOutScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeAcknowledgeMoveOutScenarioRequest.to_json())

# convert the object into a dict
change_acknowledge_move_out_scenario_request_dict = change_acknowledge_move_out_scenario_request_instance.to_dict()
# create an instance of ChangeAcknowledgeMoveOutScenarioRequest from a dict
change_acknowledge_move_out_scenario_request_from_dict = ChangeAcknowledgeMoveOutScenarioRequest.from_dict(change_acknowledge_move_out_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


