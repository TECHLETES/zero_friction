# OutgoingBankingTransactionCompanyBankAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**iban** | **str** |  | [optional] 
**bic** | **str** |  | [optional] 
**account_holder** | **str** |  | [optional] 
**sepa_creditor_id** | **str** |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.outgoing_banking_transaction_company_bank_account_dto import OutgoingBankingTransactionCompanyBankAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingBankingTransactionCompanyBankAccountDTO from a JSON string
outgoing_banking_transaction_company_bank_account_dto_instance = OutgoingBankingTransactionCompanyBankAccountDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingBankingTransactionCompanyBankAccountDTO.to_json())

# convert the object into a dict
outgoing_banking_transaction_company_bank_account_dto_dict = outgoing_banking_transaction_company_bank_account_dto_instance.to_dict()
# create an instance of OutgoingBankingTransactionCompanyBankAccountDTO from a dict
outgoing_banking_transaction_company_bank_account_dto_from_dict = OutgoingBankingTransactionCompanyBankAccountDTO.from_dict(outgoing_banking_transaction_company_bank_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


