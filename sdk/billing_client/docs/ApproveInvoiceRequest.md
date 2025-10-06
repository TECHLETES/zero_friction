# ApproveInvoiceRequest

Represents a request to approve an invoice.  This DTO is used to approve a single invoice with a specified invoice date.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_date** | **datetime** | The date when the invoice should be approved. | [optional] 

## Example

```python
from billing_client.models.approve_invoice_request import ApproveInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ApproveInvoiceRequest from a JSON string
approve_invoice_request_instance = ApproveInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(ApproveInvoiceRequest.to_json())

# convert the object into a dict
approve_invoice_request_dict = approve_invoice_request_instance.to_dict()
# create an instance of ApproveInvoiceRequest from a dict
approve_invoice_request_from_dict = ApproveInvoiceRequest.from_dict(approve_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


