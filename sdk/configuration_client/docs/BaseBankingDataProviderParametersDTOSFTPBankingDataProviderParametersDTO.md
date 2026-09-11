# BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**host** | **str** |  | 
**port** | **int** |  | [optional] 
**user_name** | **str** |  | 
**password** | **str** |  | [optional] 
**public_key** | **str** |  | [optional] 
**directory** | **str** |  | [optional] 
**authentication_method** | [**SshAuthenticationMethod**](SshAuthenticationMethod.md) |  | 
**incoming_directory** | **str** |  | [optional] 
**outgoing_directory** | **str** |  | [optional] 
**archive_directory** | **str** |  | [optional] 
**incoming_bank_statement_format_type** | [**IncomingBankingTransactionFormatType**](IncomingBankingTransactionFormatType.md) |  | [optional] 
**recurrence** | [**ScheduledJobRecurrence**](ScheduledJobRecurrence.md) |  | 
**last_run_date_time** | **datetime** |  | [optional] 
**next_run_date_time** | **datetime** |  | [optional] 
**encryption_settings** | [**BaseBankingDataProviderEncryptionSettingsDTOBankingDataProviderEncryptionSettingsIngCmsDTO**](BaseBankingDataProviderEncryptionSettingsDTOBankingDataProviderEncryptionSettingsIngCmsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.base_banking_data_provider_parameters_dtosftp_banking_data_provider_parameters_dto import BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO from a JSON string
base_banking_data_provider_parameters_dtosftp_banking_data_provider_parameters_dto_instance = BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO.to_json())

# convert the object into a dict
base_banking_data_provider_parameters_dtosftp_banking_data_provider_parameters_dto_dict = base_banking_data_provider_parameters_dtosftp_banking_data_provider_parameters_dto_instance.to_dict()
# create an instance of BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO from a dict
base_banking_data_provider_parameters_dtosftp_banking_data_provider_parameters_dto_from_dict = BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO.from_dict(base_banking_data_provider_parameters_dtosftp_banking_data_provider_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


