# BulkRegenerateInvoiceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from billing_client.models.bulk_regenerate_invoice_request import BulkRegenerateInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkRegenerateInvoiceRequest from a JSON string
bulk_regenerate_invoice_request_instance = BulkRegenerateInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(BulkRegenerateInvoiceRequest.to_json())

# convert the object into a dict
bulk_regenerate_invoice_request_dict = bulk_regenerate_invoice_request_instance.to_dict()
# create an instance of BulkRegenerateInvoiceRequest from a dict
bulk_regenerate_invoice_request_from_dict = BulkRegenerateInvoiceRequest.from_dict(bulk_regenerate_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
