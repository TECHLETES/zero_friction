# ConfigurationProductUsageOrgIntegrationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_id** | **str** |  | [optional] 
**organization_code** | **str** |  | [optional] 
**organization_name** | **str** |  | [optional] 
**integrations** | [**List[ConfigurationProductUsageIntegrationDTO]**](ConfigurationProductUsageIntegrationDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.configuration_product_usage_org_integration_dto import ConfigurationProductUsageOrgIntegrationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConfigurationProductUsageOrgIntegrationDTO from a JSON string
configuration_product_usage_org_integration_dto_instance = ConfigurationProductUsageOrgIntegrationDTO.from_json(json)
# print the JSON string representation of the object
print(ConfigurationProductUsageOrgIntegrationDTO.to_json())

# convert the object into a dict
configuration_product_usage_org_integration_dto_dict = configuration_product_usage_org_integration_dto_instance.to_dict()
# create an instance of ConfigurationProductUsageOrgIntegrationDTO from a dict
configuration_product_usage_org_integration_dto_from_dict = ConfigurationProductUsageOrgIntegrationDTO.from_dict(configuration_product_usage_org_integration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


