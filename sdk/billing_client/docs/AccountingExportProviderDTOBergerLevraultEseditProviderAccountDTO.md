# AccountingExportProviderDTOBergerLevraultEseditProviderAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**provider_type** | [**AccountingExportProviderType**](AccountingExportProviderType.md) |  | [optional]
**host** | **str** |  | [optional]
**port** | **int** |  | [optional]
**user_name** | **str** |  | [optional]
**password** | **str** |  | [optional]
**directory** | **str** |  | [optional]
**authentication_method** | [**SshAuthenticationMethod**](SshAuthenticationMethod.md) |  | [optional]
**public_key** | **str** |  | [optional]
**unc** | **str** |  | [optional]
**budget_code** | **str** |  | [optional]
**structure_code** | **str** |  | [optional]
**movement_code** | **str** |  | [optional]
**custom_entity_property_settings** | [**BergerLevraultCustomEntityPropertySettingsDTO**](BergerLevraultCustomEntityPropertySettingsDTO.md) |  | [optional]
**status** | [**AccountingExportProviderStatus**](AccountingExportProviderStatus.md) |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from billing_client.models.accounting_export_provider_dto_berger_levrault_esedit_provider_account_dto import AccountingExportProviderDTOBergerLevraultEseditProviderAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AccountingExportProviderDTOBergerLevraultEseditProviderAccountDTO from a JSON string
accounting_export_provider_dto_berger_levrault_esedit_provider_account_dto_instance = AccountingExportProviderDTOBergerLevraultEseditProviderAccountDTO.from_json(json)
# print the JSON string representation of the object
print(AccountingExportProviderDTOBergerLevraultEseditProviderAccountDTO.to_json())

# convert the object into a dict
accounting_export_provider_dto_berger_levrault_esedit_provider_account_dto_dict = accounting_export_provider_dto_berger_levrault_esedit_provider_account_dto_instance.to_dict()
# create an instance of AccountingExportProviderDTOBergerLevraultEseditProviderAccountDTO from a dict
accounting_export_provider_dto_berger_levrault_esedit_provider_account_dto_from_dict = AccountingExportProviderDTOBergerLevraultEseditProviderAccountDTO.from_dict(accounting_export_provider_dto_berger_levrault_esedit_provider_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
