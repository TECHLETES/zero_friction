# UpdateOrganizationScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**email_template** | [**BaseEmailTemplateRequest**](BaseEmailTemplateRequest.md) |  | [optional] 
**pdf_template** | [**BasePdfTemplateRequest**](BasePdfTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_organization_scenario_request import UpdateOrganizationScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateOrganizationScenarioRequest from a JSON string
update_organization_scenario_request_instance = UpdateOrganizationScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateOrganizationScenarioRequest.to_json())

# convert the object into a dict
update_organization_scenario_request_dict = update_organization_scenario_request_instance.to_dict()
# create an instance of UpdateOrganizationScenarioRequest from a dict
update_organization_scenario_request_from_dict = UpdateOrganizationScenarioRequest.from_dict(update_organization_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


