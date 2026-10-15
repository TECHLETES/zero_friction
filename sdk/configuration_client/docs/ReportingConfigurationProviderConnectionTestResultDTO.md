# ReportingConfigurationProviderConnectionTestResultDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**succeeded** | **bool** |  | 
**error_code** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.reporting_configuration_provider_connection_test_result_dto import ReportingConfigurationProviderConnectionTestResultDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ReportingConfigurationProviderConnectionTestResultDTO from a JSON string
reporting_configuration_provider_connection_test_result_dto_instance = ReportingConfigurationProviderConnectionTestResultDTO.from_json(json)
# print the JSON string representation of the object
print(ReportingConfigurationProviderConnectionTestResultDTO.to_json())

# convert the object into a dict
reporting_configuration_provider_connection_test_result_dto_dict = reporting_configuration_provider_connection_test_result_dto_instance.to_dict()
# create an instance of ReportingConfigurationProviderConnectionTestResultDTO from a dict
reporting_configuration_provider_connection_test_result_dto_from_dict = ReportingConfigurationProviderConnectionTestResultDTO.from_dict(reporting_configuration_provider_connection_test_result_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


