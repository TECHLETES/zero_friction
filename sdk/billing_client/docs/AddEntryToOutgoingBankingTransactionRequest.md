# AddEntryToOutgoingBankingTransactionRequest

Represents a request to add a new entry to an outgoing banking transaction.  This DTO supports two types of entries: invoice-based or manual entries with custom details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | **str** | The ID of the invoice to be included in the transaction.  This field is required if no manual entry details are provided. | [optional] 
**amount** | **float** | The amount for the manual entry.  Required when no invoice ID is provided. | [optional] 
**payment_reference** | **str** | The payment reference text for the manual entry.  Required when no invoice ID is provided. | [optional] 
**iban** | **str** | The IBAN (International Bank Account Number) for the manual entry.  Required when no invoice ID is provided. | [optional] 
**customer_id** | **str** | The ID of the customer associated with the manual entry.  Required when no invoice ID is provided. | [optional] 
**transaction_id** | **str** | The ID of the transaction to add the entry to. | [optional] 

## Example

```python
from billing_client.models.add_entry_to_outgoing_banking_transaction_request import AddEntryToOutgoingBankingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddEntryToOutgoingBankingTransactionRequest from a JSON string
add_entry_to_outgoing_banking_transaction_request_instance = AddEntryToOutgoingBankingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(AddEntryToOutgoingBankingTransactionRequest.to_json())

# convert the object into a dict
add_entry_to_outgoing_banking_transaction_request_dict = add_entry_to_outgoing_banking_transaction_request_instance.to_dict()
# create an instance of AddEntryToOutgoingBankingTransactionRequest from a dict
add_entry_to_outgoing_banking_transaction_request_from_dict = AddEntryToOutgoingBankingTransactionRequest.from_dict(add_entry_to_outgoing_banking_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


