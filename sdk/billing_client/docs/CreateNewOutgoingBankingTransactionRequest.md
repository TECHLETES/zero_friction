# CreateNewOutgoingBankingTransactionRequest

Represents a request to create a new outgoing banking transaction.  This DTO is used to create a new transaction with multiple entries and associated details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**outgoing_banking_transaction_type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) | The type of outgoing banking transaction to create. | [optional] 
**collection_date** | **datetime** | The date and time when the transaction should be collected. | [optional] 
**company_bank_account_id** | **str** | The ID of the company bank account to be used for the transaction. | [optional] 
**entries** | [**List[AddEntryToOutgoingBankingTransactionRequest]**](AddEntryToOutgoingBankingTransactionRequest.md) | A list of entries to be included in the transaction.  Each entry can be either invoice-based or a manual entry. | [optional] 

## Example

```python
from billing_client.models.create_new_outgoing_banking_transaction_request import CreateNewOutgoingBankingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateNewOutgoingBankingTransactionRequest from a JSON string
create_new_outgoing_banking_transaction_request_instance = CreateNewOutgoingBankingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(CreateNewOutgoingBankingTransactionRequest.to_json())

# convert the object into a dict
create_new_outgoing_banking_transaction_request_dict = create_new_outgoing_banking_transaction_request_instance.to_dict()
# create an instance of CreateNewOutgoingBankingTransactionRequest from a dict
create_new_outgoing_banking_transaction_request_from_dict = CreateNewOutgoingBankingTransactionRequest.from_dict(create_new_outgoing_banking_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


