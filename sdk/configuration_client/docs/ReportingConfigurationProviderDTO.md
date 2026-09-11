# ReportingConfigurationProviderDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**ReportingProviderStatus**](ReportingProviderStatus.md) |  |
**storage_account_uri** | **str** |  | [optional]
**storage_account_container_path** | **str** |  | [optional]
**entra_id_tenant_id** | **str** |  | [optional]
**storage_account_service_principal_application_id** | **str** |  | [optional]
**time_zone** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.reporting_configuration_provider_dto import ReportingConfigurationProviderDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ReportingConfigurationProviderDTO from a JSON string
reporting_configuration_provider_dto_instance = ReportingConfigurationProviderDTO.from_json(json)
# print the JSON string representation of the object
print(ReportingConfigurationProviderDTO.to_json())

# convert the object into a dict
reporting_configuration_provider_dto_dict = reporting_configuration_provider_dto_instance.to_dict()
# create an instance of ReportingConfigurationProviderDTO from a dict
reporting_configuration_provider_dto_from_dict = ReportingConfigurationProviderDTO.from_dict(reporting_configuration_provider_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
