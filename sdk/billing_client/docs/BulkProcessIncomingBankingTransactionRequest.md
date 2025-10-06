# BulkProcessIncomingBankingTransactionRequest

Represents a bulk request to process multiple incoming banking transactions.  This DTO allows for batch processing of transactions based on query parameters and filters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates whether this is a validation-only request without actual processing. | [optional] 
**var_query_params** | [**GetIncomingBankingTransactionsQueryParams**](GetIncomingBankingTransactionsQueryParams.md) | Query parameters to filter the transactions to be processed. | [optional] 
**quick_filter** | **str** | A quick filter string to further refine the selection of transactions to be processed. | [optional] 

## Example

```python
from billing_client.models.bulk_process_incoming_banking_transaction_request import BulkProcessIncomingBankingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkProcessIncomingBankingTransactionRequest from a JSON string
bulk_process_incoming_banking_transaction_request_instance = BulkProcessIncomingBankingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(BulkProcessIncomingBankingTransactionRequest.to_json())

# convert the object into a dict
bulk_process_incoming_banking_transaction_request_dict = bulk_process_incoming_banking_transaction_request_instance.to_dict()
# create an instance of BulkProcessIncomingBankingTransactionRequest from a dict
bulk_process_incoming_banking_transaction_request_from_dict = BulkProcessIncomingBankingTransactionRequest.from_dict(bulk_process_incoming_banking_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


