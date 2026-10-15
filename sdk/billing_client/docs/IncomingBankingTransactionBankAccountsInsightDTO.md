# IncomingBankingTransactionBankAccountsInsightDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_bank_accounts** | [**List[IncomingBankingTransactionBankAccountInsightDTO]**](IncomingBankingTransactionBankAccountInsightDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.incoming_banking_transaction_bank_accounts_insight_dto import IncomingBankingTransactionBankAccountsInsightDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionBankAccountsInsightDTO from a JSON string
incoming_banking_transaction_bank_accounts_insight_dto_instance = IncomingBankingTransactionBankAccountsInsightDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionBankAccountsInsightDTO.to_json())

# convert the object into a dict
incoming_banking_transaction_bank_accounts_insight_dto_dict = incoming_banking_transaction_bank_accounts_insight_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionBankAccountsInsightDTO from a dict
incoming_banking_transaction_bank_accounts_insight_dto_from_dict = IncomingBankingTransactionBankAccountsInsightDTO.from_dict(incoming_banking_transaction_bank_accounts_insight_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


