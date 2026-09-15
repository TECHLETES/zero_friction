# ConfigurationProductUsageIntegrationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**integration_type** | **str** |  | [optional] 
**active** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.configuration_product_usage_integration_dto import ConfigurationProductUsageIntegrationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConfigurationProductUsageIntegrationDTO from a JSON string
configuration_product_usage_integration_dto_instance = ConfigurationProductUsageIntegrationDTO.from_json(json)
# print the JSON string representation of the object
print(ConfigurationProductUsageIntegrationDTO.to_json())

# convert the object into a dict
configuration_product_usage_integration_dto_dict = configuration_product_usage_integration_dto_instance.to_dict()
# create an instance of ConfigurationProductUsageIntegrationDTO from a dict
configuration_product_usage_integration_dto_from_dict = ConfigurationProductUsageIntegrationDTO.from_dict(configuration_product_usage_integration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


