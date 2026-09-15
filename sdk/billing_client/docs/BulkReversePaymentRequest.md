# BulkReversePaymentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetPaymentsQueryParams**](GetPaymentsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**reversal_additional_information** | **str** |  | [optional] 

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


