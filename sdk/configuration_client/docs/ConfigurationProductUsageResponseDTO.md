# ConfigurationProductUsageResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization_integrations** | [**List[ConfigurationProductUsageOrgIntegrationDTO]**](ConfigurationProductUsageOrgIntegrationDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.configuration_product_usage_response_dto import ConfigurationProductUsageResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConfigurationProductUsageResponseDTO from a JSON string
configuration_product_usage_response_dto_instance = ConfigurationProductUsageResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ConfigurationProductUsageResponseDTO.to_json())

# convert the object into a dict
configuration_product_usage_response_dto_dict = configuration_product_usage_response_dto_instance.to_dict()
# create an instance of ConfigurationProductUsageResponseDTO from a dict
configuration_product_usage_response_dto_from_dict = ConfigurationProductUsageResponseDTO.from_dict(configuration_product_usage_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


