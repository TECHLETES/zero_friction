# CancelPaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | **str** |  | [optional]

## Example

```python
from billing_client.models.cancel_payment_plan_request import CancelPaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CancelPaymentPlanRequest from a JSON string
cancel_payment_plan_request_instance = CancelPaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(CancelPaymentPlanRequest.to_json())

# convert the object into a dict
cancel_payment_plan_request_dict = cancel_payment_plan_request_instance.to_dict()
# create an instance of CancelPaymentPlanRequest from a dict
cancel_payment_plan_request_from_dict = CancelPaymentPlanRequest.from_dict(cancel_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
