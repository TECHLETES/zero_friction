# BulkMarkInvoiceSentSkippedRequest

Represents a bulk request to mark multiple invoices as skipped for sending.  This DTO allows marking multiple invoices as skipped in a single operation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates if only validation should be performed without actually marking the invoices as skipped.  When true, the system will only validate if the invoices can be marked as skipped without making any changes. | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) | Query parameters to filter the invoices to be marked as skipped. | [optional] 
**quick_filter** | **str** | Quick filter string to filter invoices without using complex query parameters. | [optional] 

## Example

```python
from billing_client.models.bulk_mark_invoice_sent_skipped_request import BulkMarkInvoiceSentSkippedRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkMarkInvoiceSentSkippedRequest from a JSON string
bulk_mark_invoice_sent_skipped_request_instance = BulkMarkInvoiceSentSkippedRequest.from_json(json)
# print the JSON string representation of the object
print(BulkMarkInvoiceSentSkippedRequest.to_json())

# convert the object into a dict
bulk_mark_invoice_sent_skipped_request_dict = bulk_mark_invoice_sent_skipped_request_instance.to_dict()
# create an instance of BulkMarkInvoiceSentSkippedRequest from a dict
bulk_mark_invoice_sent_skipped_request_from_dict = BulkMarkInvoiceSentSkippedRequest.from_dict(bulk_mark_invoice_sent_skipped_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


