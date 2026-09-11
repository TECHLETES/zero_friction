# CreateAccountingExportProviderRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_type** | [**AccountingExportProviderType**](AccountingExportProviderType.md) |  |
**settings** | [**BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO**](BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO.md) |  |

## Example

```python
from billing_client.models.create_accounting_export_provider_request import CreateAccountingExportProviderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateAccountingExportProviderRequest from a JSON string
create_accounting_export_provider_request_instance = CreateAccountingExportProviderRequest.from_json(json)
# print the JSON string representation of the object
print(CreateAccountingExportProviderRequest.to_json())

# convert the object into a dict
create_accounting_export_provider_request_dict = create_accounting_export_provider_request_instance.to_dict()
# create an instance of CreateAccountingExportProviderRequest from a dict
create_accounting_export_provider_request_from_dict = CreateAccountingExportProviderRequest.from_dict(create_accounting_export_provider_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
