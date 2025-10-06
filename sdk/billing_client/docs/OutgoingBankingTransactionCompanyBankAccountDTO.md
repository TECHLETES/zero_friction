# OutgoingBankingTransactionCompanyBankAccountDTO

Contains information about a company bank account associated with an outgoing banking transaction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The unique identifier of the company bank account. | [optional] 
**iban** | **str** | The International Bank Account Number (IBAN) of the account. | [optional] 
**bic** | **str** | The Bank Identifier Code (BIC) of the account. | [optional] 
**account_holder** | **str** | The name of the account holder. | [optional] 
**sepa_creditor_id** | **str** | The SEPA creditor identifier associated with the account. | [optional] 

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


