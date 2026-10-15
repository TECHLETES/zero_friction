# UpdateReportingConfigurationProviderRequest


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
from configuration_client.models.update_reporting_configuration_provider_request import UpdateReportingConfigurationProviderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateReportingConfigurationProviderRequest from a JSON string
update_reporting_configuration_provider_request_instance = UpdateReportingConfigurationProviderRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateReportingConfigurationProviderRequest.to_json())

# convert the object into a dict
update_reporting_configuration_provider_request_dict = update_reporting_configuration_provider_request_instance.to_dict()
# create an instance of UpdateReportingConfigurationProviderRequest from a dict
update_reporting_configuration_provider_request_from_dict = UpdateReportingConfigurationProviderRequest.from_dict(update_reporting_configuration_provider_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


