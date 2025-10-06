# ChangeContractLocationsRemovedScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**email_template** | [**ContractLocationsRemovedEmailTemplateRequest**](ContractLocationsRemovedEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_contract_locations_removed_scenario_request import ChangeContractLocationsRemovedScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeContractLocationsRemovedScenarioRequest from a JSON string
change_contract_locations_removed_scenario_request_instance = ChangeContractLocationsRemovedScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeContractLocationsRemovedScenarioRequest.to_json())

# convert the object into a dict
change_contract_locations_removed_scenario_request_dict = change_contract_locations_removed_scenario_request_instance.to_dict()
# create an instance of ChangeContractLocationsRemovedScenarioRequest from a dict
change_contract_locations_removed_scenario_request_from_dict = ChangeContractLocationsRemovedScenarioRequest.from_dict(change_contract_locations_removed_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


