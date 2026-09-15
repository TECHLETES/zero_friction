# BaseBankingDataProviderEncryptionSettingsDTOBankingDataProviderEncryptionSettingsIngCmsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**private_key** | **str** |  | [optional] 
**certificate** | **str** |  | [optional] 
**public_certificate** | **str** |  | [optional] 
**contains_private_key** | **bool** |  | [optional] 
**contains_certificate** | **bool** |  | [optional] 
**contains_public_certificate** | **bool** |  | [optional] 
**is_enabled** | **bool** |  | [optional] 
**encryption_type** | [**BankingDataProviderEncryptionType**](BankingDataProviderEncryptionType.md) |  | [optional] 

## Example

```python
from configuration_client.models.base_banking_data_provider_encryption_settings_dto_banking_data_provider_encryption_settings_ing_cms_dto import BaseBankingDataProviderEncryptionSettingsDTOBankingDataProviderEncryptionSettingsIngCmsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseBankingDataProviderEncryptionSettingsDTOBankingDataProviderEncryptionSettingsIngCmsDTO from a JSON string
base_banking_data_provider_encryption_settings_dto_banking_data_provider_encryption_settings_ing_cms_dto_instance = BaseBankingDataProviderEncryptionSettingsDTOBankingDataProviderEncryptionSettingsIngCmsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseBankingDataProviderEncryptionSettingsDTOBankingDataProviderEncryptionSettingsIngCmsDTO.to_json())

# convert the object into a dict
base_banking_data_provider_encryption_settings_dto_banking_data_provider_encryption_settings_ing_cms_dto_dict = base_banking_data_provider_encryption_settings_dto_banking_data_provider_encryption_settings_ing_cms_dto_instance.to_dict()
# create an instance of BaseBankingDataProviderEncryptionSettingsDTOBankingDataProviderEncryptionSettingsIngCmsDTO from a dict
base_banking_data_provider_encryption_settings_dto_banking_data_provider_encryption_settings_ing_cms_dto_from_dict = BaseBankingDataProviderEncryptionSettingsDTOBankingDataProviderEncryptionSettingsIngCmsDTO.from_dict(base_banking_data_provider_encryption_settings_dto_banking_data_provider_encryption_settings_ing_cms_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


