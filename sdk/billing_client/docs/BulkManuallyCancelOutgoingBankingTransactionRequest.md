# BulkManuallyCancelOutgoingBankingTransactionRequest

Represents a bulk request to manually cancel multiple outgoing banking transactions.  This DTO allows for batch cancellation of transactions based on query parameters and filters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates whether this is a validation-only request without actual cancellation. | [optional] 
**var_query_params** | [**GetOutgoingBankingTransactionsQueryParams**](GetOutgoingBankingTransactionsQueryParams.md) | Query parameters to filter the transactions to be cancelled. | [optional] 
**quick_filter** | **str** | A quick filter string to further refine the selection of transactions to be cancelled. | [optional] 

## Example

```python
from billing_client.models.bulk_manually_cancel_outgoing_banking_transaction_request import BulkManuallyCancelOutgoingBankingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkManuallyCancelOutgoingBankingTransactionRequest from a JSON string
bulk_manually_cancel_outgoing_banking_transaction_request_instance = BulkManuallyCancelOutgoingBankingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(BulkManuallyCancelOutgoingBankingTransactionRequest.to_json())

# convert the object into a dict
bulk_manually_cancel_outgoing_banking_transaction_request_dict = bulk_manually_cancel_outgoing_banking_transaction_request_instance.to_dict()
# create an instance of BulkManuallyCancelOutgoingBankingTransactionRequest from a dict
bulk_manually_cancel_outgoing_banking_transaction_request_from_dict = BulkManuallyCancelOutgoingBankingTransactionRequest.from_dict(bulk_manually_cancel_outgoing_banking_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


