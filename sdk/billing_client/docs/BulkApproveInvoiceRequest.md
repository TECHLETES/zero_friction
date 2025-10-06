# BulkApproveInvoiceRequest

Represents a bulk request to approve multiple invoices.  This DTO allows approving multiple invoices in a single operation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_date** | **datetime** | The date when the invoice should be approved. | [optional] 
**only_validate** | **bool** | Indicates if only validation should be performed without actually approving the invoices.  When true, the system will only validate if the invoices can be approved without making any changes. | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) | Query parameters to filter the invoices to be approved. | [optional] 
**quick_filter** | **str** | Quick filter string to filter invoices without using complex query parameters. | [optional] 

## Example

```python
from billing_client.models.bulk_approve_invoice_request import BulkApproveInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkApproveInvoiceRequest from a JSON string
bulk_approve_invoice_request_instance = BulkApproveInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(BulkApproveInvoiceRequest.to_json())

# convert the object into a dict
bulk_approve_invoice_request_dict = bulk_approve_invoice_request_instance.to_dict()
# create an instance of BulkApproveInvoiceRequest from a dict
bulk_approve_invoice_request_from_dict = BulkApproveInvoiceRequest.from_dict(bulk_approve_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


