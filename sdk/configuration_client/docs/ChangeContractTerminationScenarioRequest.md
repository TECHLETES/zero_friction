# ChangeContractTerminationScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**email_template** | [**ContractTerminationEmailTemplateRequest**](ContractTerminationEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_contract_termination_scenario_request import ChangeContractTerminationScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeContractTerminationScenarioRequest from a JSON string
change_contract_termination_scenario_request_instance = ChangeContractTerminationScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeContractTerminationScenarioRequest.to_json())

# convert the object into a dict
change_contract_termination_scenario_request_dict = change_contract_termination_scenario_request_instance.to_dict()
# create an instance of ChangeContractTerminationScenarioRequest from a dict
change_contract_termination_scenario_request_from_dict = ChangeContractTerminationScenarioRequest.from_dict(change_contract_termination_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


