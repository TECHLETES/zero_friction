# ChangePaymentDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  |
**collection_date** | **datetime** |  | [optional]
**psp_instrument** | [**PspInstrumentSnapshotRequest**](PspInstrumentSnapshotRequest.md) |  | [optional]

## Example

```python
from billing_client.models.change_payment_details_request import ChangePaymentDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangePaymentDetailsRequest from a JSON string
change_payment_details_request_instance = ChangePaymentDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(ChangePaymentDetailsRequest.to_json())

# convert the object into a dict
change_payment_details_request_dict = change_payment_details_request_instance.to_dict()
# create an instance of ChangePaymentDetailsRequest from a dict
change_payment_details_request_from_dict = ChangePaymentDetailsRequest.from_dict(change_payment_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
