# ChangeContractLocationsAddedScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**email_template** | [**ContractLocationsAddedEmailTemplateRequest**](ContractLocationsAddedEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_contract_locations_added_scenario_request import ChangeContractLocationsAddedScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeContractLocationsAddedScenarioRequest from a JSON string
change_contract_locations_added_scenario_request_instance = ChangeContractLocationsAddedScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeContractLocationsAddedScenarioRequest.to_json())

# convert the object into a dict
change_contract_locations_added_scenario_request_dict = change_contract_locations_added_scenario_request_instance.to_dict()
# create an instance of ChangeContractLocationsAddedScenarioRequest from a dict
change_contract_locations_added_scenario_request_from_dict = ChangeContractLocationsAddedScenarioRequest.from_dict(change_contract_locations_added_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


