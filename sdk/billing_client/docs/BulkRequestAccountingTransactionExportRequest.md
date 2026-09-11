# BulkRequestAccountingTransactionExportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_query_params** | [**GetTransactionsQueryParams**](GetTransactionsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**only_validate** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.bulk_request_accounting_transaction_export_request import BulkRequestAccountingTransactionExportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkRequestAccountingTransactionExportRequest from a JSON string
bulk_request_accounting_transaction_export_request_instance = BulkRequestAccountingTransactionExportRequest.from_json(json)
# print the JSON string representation of the object
print(BulkRequestAccountingTransactionExportRequest.to_json())

# convert the object into a dict
bulk_request_accounting_transaction_export_request_dict = bulk_request_accounting_transaction_export_request_instance.to_dict()
# create an instance of BulkRequestAccountingTransactionExportRequest from a dict
bulk_request_accounting_transaction_export_request_from_dict = BulkRequestAccountingTransactionExportRequest.from_dict(bulk_request_accounting_transaction_export_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


