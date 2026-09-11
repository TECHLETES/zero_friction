# BulkDeleteOutgoingBankingTransactionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetOutgoingBankingTransactionsQueryParams**](GetOutgoingBankingTransactionsQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from billing_client.models.bulk_delete_outgoing_banking_transaction_request import BulkDeleteOutgoingBankingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDeleteOutgoingBankingTransactionRequest from a JSON string
bulk_delete_outgoing_banking_transaction_request_instance = BulkDeleteOutgoingBankingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDeleteOutgoingBankingTransactionRequest.to_json())

# convert the object into a dict
bulk_delete_outgoing_banking_transaction_request_dict = bulk_delete_outgoing_banking_transaction_request_instance.to_dict()
# create an instance of BulkDeleteOutgoingBankingTransactionRequest from a dict
bulk_delete_outgoing_banking_transaction_request_from_dict = BulkDeleteOutgoingBankingTransactionRequest.from_dict(bulk_delete_outgoing_banking_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
