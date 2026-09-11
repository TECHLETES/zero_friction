# BulkChangePaymentDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**new_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional]
**collection_date** | **datetime** |  | [optional]
**psp_instrument** | [**PspInstrumentSnapshotRequest**](PspInstrumentSnapshotRequest.md) |  | [optional]

## Example

```python
from billing_client.models.bulk_change_payment_details_request import BulkChangePaymentDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkChangePaymentDetailsRequest from a JSON string
bulk_change_payment_details_request_instance = BulkChangePaymentDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(BulkChangePaymentDetailsRequest.to_json())

# convert the object into a dict
bulk_change_payment_details_request_dict = bulk_change_payment_details_request_instance.to_dict()
# create an instance of BulkChangePaymentDetailsRequest from a dict
bulk_change_payment_details_request_from_dict = BulkChangePaymentDetailsRequest.from_dict(bulk_change_payment_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
