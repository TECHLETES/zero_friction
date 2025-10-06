# ChangeAdvanceAmountChangedScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**email_template** | [**AdvanceAmountChangedEmailTemplateRequest**](AdvanceAmountChangedEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_advance_amount_changed_scenario_request import ChangeAdvanceAmountChangedScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeAdvanceAmountChangedScenarioRequest from a JSON string
change_advance_amount_changed_scenario_request_instance = ChangeAdvanceAmountChangedScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeAdvanceAmountChangedScenarioRequest.to_json())

# convert the object into a dict
change_advance_amount_changed_scenario_request_dict = change_advance_amount_changed_scenario_request_instance.to_dict()
# create an instance of ChangeAdvanceAmountChangedScenarioRequest from a dict
change_advance_amount_changed_scenario_request_from_dict = ChangeAdvanceAmountChangedScenarioRequest.from_dict(change_advance_amount_changed_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


