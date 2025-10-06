# BulkSendInvoiceViaMailRequest

Represents a bulk request to send multiple invoices via email.  This DTO allows sending multiple invoices via email in a single operation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates if only validation should be performed without actually sending the invoices.  When true, the system will only validate if the invoices can be sent without making any changes. | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) | Query parameters to filter the invoices to be sent. | [optional] 
**quick_filter** | **str** | Quick filter string to filter invoices without using complex query parameters. | [optional] 

## Example

```python
from billing_client.models.bulk_send_invoice_via_mail_request import BulkSendInvoiceViaMailRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSendInvoiceViaMailRequest from a JSON string
bulk_send_invoice_via_mail_request_instance = BulkSendInvoiceViaMailRequest.from_json(json)
# print the JSON string representation of the object
print(BulkSendInvoiceViaMailRequest.to_json())

# convert the object into a dict
bulk_send_invoice_via_mail_request_dict = bulk_send_invoice_via_mail_request_instance.to_dict()
# create an instance of BulkSendInvoiceViaMailRequest from a dict
bulk_send_invoice_via_mail_request_from_dict = BulkSendInvoiceViaMailRequest.from_dict(bulk_send_invoice_via_mail_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


