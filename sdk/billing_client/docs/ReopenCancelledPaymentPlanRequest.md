# ReopenCancelledPaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recalculate_remaining_installment_dates** | **bool** |  | [optional]

## Example

```python
from billing_client.models.reopen_cancelled_payment_plan_request import ReopenCancelledPaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReopenCancelledPaymentPlanRequest from a JSON string
reopen_cancelled_payment_plan_request_instance = ReopenCancelledPaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(ReopenCancelledPaymentPlanRequest.to_json())

# convert the object into a dict
reopen_cancelled_payment_plan_request_dict = reopen_cancelled_payment_plan_request_instance.to_dict()
# create an instance of ReopenCancelledPaymentPlanRequest from a dict
reopen_cancelled_payment_plan_request_from_dict = ReopenCancelledPaymentPlanRequest.from_dict(reopen_cancelled_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
