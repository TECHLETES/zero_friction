# ResendPaymentPlanReminderRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_plan_installment_id** | **str** |  |
**apply_start_communication_idempotency** | **bool** |  | [optional]

## Example

```python
from billing_client.models.resend_payment_plan_reminder_request import ResendPaymentPlanReminderRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ResendPaymentPlanReminderRequest from a JSON string
resend_payment_plan_reminder_request_instance = ResendPaymentPlanReminderRequest.from_json(json)
# print the JSON string representation of the object
print(ResendPaymentPlanReminderRequest.to_json())

# convert the object into a dict
resend_payment_plan_reminder_request_dict = resend_payment_plan_reminder_request_instance.to_dict()
# create an instance of ResendPaymentPlanReminderRequest from a dict
resend_payment_plan_reminder_request_from_dict = ResendPaymentPlanReminderRequest.from_dict(resend_payment_plan_reminder_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
