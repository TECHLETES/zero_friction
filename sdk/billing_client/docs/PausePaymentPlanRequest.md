# PausePaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | **str** |  | [optional] 

## Example

```python
from billing_client.models.pause_payment_plan_request import PausePaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PausePaymentPlanRequest from a JSON string
pause_payment_plan_request_instance = PausePaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(PausePaymentPlanRequest.to_json())

# convert the object into a dict
pause_payment_plan_request_dict = pause_payment_plan_request_instance.to_dict()
# create an instance of PausePaymentPlanRequest from a dict
pause_payment_plan_request_from_dict = PausePaymentPlanRequest.from_dict(pause_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


