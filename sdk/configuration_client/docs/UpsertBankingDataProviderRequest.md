# UpsertBankingDataProviderRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_name** | **str** |  |
**parameters** | [**BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO**](BaseBankingDataProviderParametersDTOSFTPBankingDataProviderParametersDTO.md) |  |
**direction** | [**BankingDataProviderDirection**](BankingDataProviderDirection.md) |  |
**bank_account_ids** | **List[str]** |  | [optional]
**apply_to_new_bank_accounts** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.upsert_banking_data_provider_request import UpsertBankingDataProviderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpsertBankingDataProviderRequest from a JSON string
upsert_banking_data_provider_request_instance = UpsertBankingDataProviderRequest.from_json(json)
# print the JSON string representation of the object
print(UpsertBankingDataProviderRequest.to_json())

# convert the object into a dict
upsert_banking_data_provider_request_dict = upsert_banking_data_provider_request_instance.to_dict()
# create an instance of UpsertBankingDataProviderRequest from a dict
upsert_banking_data_provider_request_from_dict = UpsertBankingDataProviderRequest.from_dict(upsert_banking_data_provider_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
