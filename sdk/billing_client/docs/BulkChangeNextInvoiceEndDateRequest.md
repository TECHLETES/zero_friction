# BulkChangeNextInvoiceEndDateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetBillingCompletenessQueryParams**](GetBillingCompletenessQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**from_first_open_period** | **bool** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.bulk_change_next_invoice_end_date_request import BulkChangeNextInvoiceEndDateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkChangeNextInvoiceEndDateRequest from a JSON string
bulk_change_next_invoice_end_date_request_instance = BulkChangeNextInvoiceEndDateRequest.from_json(json)
# print the JSON string representation of the object
print(BulkChangeNextInvoiceEndDateRequest.to_json())

# convert the object into a dict
bulk_change_next_invoice_end_date_request_dict = bulk_change_next_invoice_end_date_request_instance.to_dict()
# create an instance of BulkChangeNextInvoiceEndDateRequest from a dict
bulk_change_next_invoice_end_date_request_from_dict = BulkChangeNextInvoiceEndDateRequest.from_dict(bulk_change_next_invoice_end_date_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


