# UpdateAccountingExportProviderRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_type** | [**AccountingExportProviderType**](AccountingExportProviderType.md) |  | 
**settings** | [**BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO**](BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO.md) |  | 

## Example

```python
from billing_client.models.update_accounting_export_provider_request import UpdateAccountingExportProviderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAccountingExportProviderRequest from a JSON string
update_accounting_export_provider_request_instance = UpdateAccountingExportProviderRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateAccountingExportProviderRequest.to_json())

# convert the object into a dict
update_accounting_export_provider_request_dict = update_accounting_export_provider_request_instance.to_dict()
# create an instance of UpdateAccountingExportProviderRequest from a dict
update_accounting_export_provider_request_from_dict = UpdateAccountingExportProviderRequest.from_dict(update_accounting_export_provider_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


