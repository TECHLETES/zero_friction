# UpdateOutgoingBankingTransactionBankAccountRequest

Represents a request to update the bank account associated with an outgoing banking transaction.  This DTO is used to change which company bank account the transaction will be processed from.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company_bank_account_id** | **str** | The ID of the company bank account to be used for the transaction. | [optional] 

## Example

```python
from billing_client.models.update_outgoing_banking_transaction_bank_account_request import UpdateOutgoingBankingTransactionBankAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateOutgoingBankingTransactionBankAccountRequest from a JSON string
update_outgoing_banking_transaction_bank_account_request_instance = UpdateOutgoingBankingTransactionBankAccountRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateOutgoingBankingTransactionBankAccountRequest.to_json())

# convert the object into a dict
update_outgoing_banking_transaction_bank_account_request_dict = update_outgoing_banking_transaction_bank_account_request_instance.to_dict()
# create an instance of UpdateOutgoingBankingTransactionBankAccountRequest from a dict
update_outgoing_banking_transaction_bank_account_request_from_dict = UpdateOutgoingBankingTransactionBankAccountRequest.from_dict(update_outgoing_banking_transaction_bank_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


