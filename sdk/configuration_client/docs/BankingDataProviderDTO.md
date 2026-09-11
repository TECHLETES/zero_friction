# BankingDataProviderDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**parameters** | [**BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO**](BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO.md) |  | [optional]
**direction** | [**BankingDataProviderDirection**](BankingDataProviderDirection.md) |  | [optional]
**company_bank_accounts** | [**List[CompanyBankAccountReferenceDTO]**](CompanyBankAccountReferenceDTO.md) |  | [optional]
**apply_to_new_bank_accounts** | **bool** |  | [optional]
**status** | [**BankingDataProviderStatus**](BankingDataProviderStatus.md) |  | [optional]
**error_message** | **int** |  | [optional]
**last_processed_date_time** | **datetime** |  | [optional]
**processing_results** | [**List[BankingDataProviderProcessingResultDTO]**](BankingDataProviderProcessingResultDTO.md) |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.banking_data_provider_dto import BankingDataProviderDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BankingDataProviderDTO from a JSON string
banking_data_provider_dto_instance = BankingDataProviderDTO.from_json(json)
# print the JSON string representation of the object
print(BankingDataProviderDTO.to_json())

# convert the object into a dict
banking_data_provider_dto_dict = banking_data_provider_dto_instance.to_dict()
# create an instance of BankingDataProviderDTO from a dict
banking_data_provider_dto_from_dict = BankingDataProviderDTO.from_dict(banking_data_provider_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
