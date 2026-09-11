# BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**provider_type** | [**AccountingExportProviderType**](AccountingExportProviderType.md) |  | [optional]
**host** | **str** |  |
**port** | **int** |  |
**user_name** | **str** |  |
**password** | **str** |  | [optional]
**directory** | **str** |  |
**authentication_method** | [**SshAuthenticationMethod**](SshAuthenticationMethod.md) |  |
**public_key** | **str** |  | [optional]
**unc** | **str** |  | [optional]
**budget_code** | **str** |  |
**structure_code** | **str** |  |
**movement_code** | **str** |  |
**custom_entity_property_settings** | [**BergerLevraultCustomEntityPropertySettingsRequestDTO**](BergerLevraultCustomEntityPropertySettingsRequestDTO.md) |  | [optional]

## Example

```python
from billing_client.models.base_accounting_export_provider_settings_dto_berger_levrault_esedit_provider_settings_dto import BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO from a JSON string
base_accounting_export_provider_settings_dto_berger_levrault_esedit_provider_settings_dto_instance = BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO.to_json())

# convert the object into a dict
base_accounting_export_provider_settings_dto_berger_levrault_esedit_provider_settings_dto_dict = base_accounting_export_provider_settings_dto_berger_levrault_esedit_provider_settings_dto_instance.to_dict()
# create an instance of BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO from a dict
base_accounting_export_provider_settings_dto_berger_levrault_esedit_provider_settings_dto_from_dict = BaseAccountingExportProviderSettingsDTOBergerLevraultEseditProviderSettingsDTO.from_dict(base_accounting_export_provider_settings_dto_berger_levrault_esedit_provider_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
