# BulkDeleteInvoiceRequest

Represents a bulk request to delete multiple invoices.  This DTO allows deleting multiple invoices in a single operation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates if only validation should be performed without actually deleting the invoices.  When true, the system will only validate if the invoices can be deleted without making any changes. | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) | Query parameters to filter the invoices to be deleted. | [optional] 
**quick_filter** | **str** | Quick filter string to filter invoices without using complex query parameters. | [optional] 

## Example

```python
from billing_client.models.bulk_delete_invoice_request import BulkDeleteInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDeleteInvoiceRequest from a JSON string
bulk_delete_invoice_request_instance = BulkDeleteInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDeleteInvoiceRequest.to_json())

# convert the object into a dict
bulk_delete_invoice_request_dict = bulk_delete_invoice_request_instance.to_dict()
# create an instance of BulkDeleteInvoiceRequest from a dict
bulk_delete_invoice_request_from_dict = BulkDeleteInvoiceRequest.from_dict(bulk_delete_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


