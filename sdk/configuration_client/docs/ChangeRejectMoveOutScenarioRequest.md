# ChangeRejectMoveOutScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**email_template** | [**RejectMoveOutEmailTemplateRequest**](RejectMoveOutEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_reject_move_out_scenario_request import ChangeRejectMoveOutScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeRejectMoveOutScenarioRequest from a JSON string
change_reject_move_out_scenario_request_instance = ChangeRejectMoveOutScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeRejectMoveOutScenarioRequest.to_json())

# convert the object into a dict
change_reject_move_out_scenario_request_dict = change_reject_move_out_scenario_request_instance.to_dict()
# create an instance of ChangeRejectMoveOutScenarioRequest from a dict
change_reject_move_out_scenario_request_from_dict = ChangeRejectMoveOutScenarioRequest.from_dict(change_reject_move_out_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


