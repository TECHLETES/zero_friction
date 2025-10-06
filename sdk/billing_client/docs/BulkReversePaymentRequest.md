# BulkReversePaymentRequest

Represents a bulk request to reverse multiple payments.  This DTO extends the base reversal request with bulk operation capabilities.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reversal_additional_information** | **str** | Additional information or reason for the payment reversal. | [optional] 
**only_validate** | **bool** | Indicates whether this is a validation-only request without actual reversal. | [optional] 
**var_query_params** | [**GetPaymentsQueryParams**](GetPaymentsQueryParams.md) | Query parameters to filter the payments to be reversed. | [optional] 
**quick_filter** | **str** | A quick filter string to further refine the selection of payments to be reversed. | [optional] 

## Example

```python
from billing_client.models.bulk_reverse_payment_request import BulkReversePaymentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkReversePaymentRequest from a JSON string
bulk_reverse_payment_request_instance = BulkReversePaymentRequest.from_json(json)
# print the JSON string representation of the object
print(BulkReversePaymentRequest.to_json())

# convert the object into a dict
bulk_reverse_payment_request_dict = bulk_reverse_payment_request_instance.to_dict()
# create an instance of BulkReversePaymentRequest from a dict
bulk_reverse_payment_request_from_dict = BulkReversePaymentRequest.from_dict(bulk_reverse_payment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


