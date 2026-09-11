# IncomingBankingTransactionCompanyBankAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**iban** | **str** |  | [optional] 
**bic** | **str** |  | [optional] 
**account_holder** | **str** |  | [optional] 
**sepa_creditor_id** | **str** |  | [optional] 

## Example

```python
from billing_client.models.incoming_banking_transaction_company_bank_account_dto import IncomingBankingTransactionCompanyBankAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionCompanyBankAccountDTO from a JSON string
incoming_banking_transaction_company_bank_account_dto_instance = IncomingBankingTransactionCompanyBankAccountDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionCompanyBankAccountDTO.to_json())

# convert the object into a dict
incoming_banking_transaction_company_bank_account_dto_dict = incoming_banking_transaction_company_bank_account_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionCompanyBankAccountDTO from a dict
incoming_banking_transaction_company_bank_account_dto_from_dict = IncomingBankingTransactionCompanyBankAccountDTO.from_dict(incoming_banking_transaction_company_bank_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


