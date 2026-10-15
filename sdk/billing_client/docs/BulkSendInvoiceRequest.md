# BulkSendInvoiceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**apply_start_communication_idempotency** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.bulk_send_invoice_request import BulkSendInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSendInvoiceRequest from a JSON string
bulk_send_invoice_request_instance = BulkSendInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(BulkSendInvoiceRequest.to_json())

# convert the object into a dict
bulk_send_invoice_request_dict = bulk_send_invoice_request_instance.to_dict()
# create an instance of BulkSendInvoiceRequest from a dict
bulk_send_invoice_request_from_dict = BulkSendInvoiceRequest.from_dict(bulk_send_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


