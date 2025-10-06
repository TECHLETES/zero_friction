# ReversePaymentRequest

Represents a request to reverse a payment.  This DTO is used to initiate the reversal of a previously processed payment.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reversal_additional_information** | **str** | Additional information or reason for the payment reversal. | [optional] 

## Example

```python
from billing_client.models.reverse_payment_request import ReversePaymentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReversePaymentRequest from a JSON string
reverse_payment_request_instance = ReversePaymentRequest.from_json(json)
# print the JSON string representation of the object
print(ReversePaymentRequest.to_json())

# convert the object into a dict
reverse_payment_request_dict = reverse_payment_request_instance.to_dict()
# create an instance of ReversePaymentRequest from a dict
reverse_payment_request_from_dict = ReversePaymentRequest.from_dict(reverse_payment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


