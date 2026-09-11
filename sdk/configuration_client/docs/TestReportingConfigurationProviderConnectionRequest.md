# TestReportingConfigurationProviderConnectionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storage_account_uri** | **str** |  | [optional]
**storage_account_container_path** | **str** |  | [optional]
**entra_id_tenant_id** | **str** |  | [optional]
**service_principal_application_id** | **str** |  | [optional]
**service_principal_client_secret** | **str** |  | [optional]

## Example

```python
from configuration_client.models.test_reporting_configuration_provider_connection_request import TestReportingConfigurationProviderConnectionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TestReportingConfigurationProviderConnectionRequest from a JSON string
test_reporting_configuration_provider_connection_request_instance = TestReportingConfigurationProviderConnectionRequest.from_json(json)
# print the JSON string representation of the object
print(TestReportingConfigurationProviderConnectionRequest.to_json())

# convert the object into a dict
test_reporting_configuration_provider_connection_request_dict = test_reporting_configuration_provider_connection_request_instance.to_dict()
# create an instance of TestReportingConfigurationProviderConnectionRequest from a dict
test_reporting_configuration_provider_connection_request_from_dict = TestReportingConfigurationProviderConnectionRequest.from_dict(test_reporting_configuration_provider_connection_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
