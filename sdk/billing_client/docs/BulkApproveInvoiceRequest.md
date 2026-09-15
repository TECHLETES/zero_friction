# BulkApproveInvoiceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**invoice_date** | **datetime** |  | [optional] 

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


