# BulkCreditInvoiceRequest

Represents a bulk request to credit multiple invoices.  This DTO allows creating credit notes for multiple invoices in a single operation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates if only validation should be performed without actually creating credit notes.  When true, the system will only validate if the invoices can be credited without making any changes. | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) | Query parameters to filter the invoices to be credited. | [optional] 
**quick_filter** | **str** | Quick filter string to filter invoices without using complex query parameters. | [optional] 

## Example

```python
from billing_client.models.bulk_credit_invoice_request import BulkCreditInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkCreditInvoiceRequest from a JSON string
bulk_credit_invoice_request_instance = BulkCreditInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(BulkCreditInvoiceRequest.to_json())

# convert the object into a dict
bulk_credit_invoice_request_dict = bulk_credit_invoice_request_instance.to_dict()
# create an instance of BulkCreditInvoiceRequest from a dict
bulk_credit_invoice_request_from_dict = BulkCreditInvoiceRequest.from_dict(bulk_credit_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


