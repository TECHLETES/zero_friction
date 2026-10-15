# AddEntryToOutgoingBankingTransactionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | **str** |  | 
**amount** | **float** |  | 
**payment_reference** | **str** |  | 
**iban** | **str** |  | [optional] 
**customer_id** | **str** |  | 
**transaction_id** | **str** |  | [optional] 

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


