# IncomingBankingTransactionBankAccountInsightDTO

Provides insight information for a specific company bank account.  This DTO contains details about the account's status and last fetch time.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **str** | The International Bank Account Number (IBAN) of the account. | [optional] 
**last_fetched_date_time** | **datetime** | The date and time when transactions were last fetched for this account. | [optional] 
**plugin_run_status** | [**StatusCode**](StatusCode.md) | The status of the last plugin run for this account. | [optional] 

## Example

```python
from billing_client.models.incoming_banking_transaction_bank_account_insight_dto import IncomingBankingTransactionBankAccountInsightDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionBankAccountInsightDTO from a JSON string
incoming_banking_transaction_bank_account_insight_dto_instance = IncomingBankingTransactionBankAccountInsightDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionBankAccountInsightDTO.to_json())

# convert the object into a dict
incoming_banking_transaction_bank_account_insight_dto_dict = incoming_banking_transaction_bank_account_insight_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionBankAccountInsightDTO from a dict
incoming_banking_transaction_bank_account_insight_dto_from_dict = IncomingBankingTransactionBankAccountInsightDTO.from_dict(incoming_banking_transaction_bank_account_insight_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


