# ChangePaymentPlanCancelledScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pdf_template** | [**PaymentPlanCancelledPdfTemplateRequest**](PaymentPlanCancelledPdfTemplateRequest.md) |  |
**email_template** | [**PaymentPlanCancelledEmailTemplateRequest**](PaymentPlanCancelledEmailTemplateRequest.md) |  |
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  |
**auto_fallback_to_postal** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.change_payment_plan_cancelled_scenario_request import ChangePaymentPlanCancelledScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangePaymentPlanCancelledScenarioRequest from a JSON string
change_payment_plan_cancelled_scenario_request_instance = ChangePaymentPlanCancelledScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangePaymentPlanCancelledScenarioRequest.to_json())

# convert the object into a dict
change_payment_plan_cancelled_scenario_request_dict = change_payment_plan_cancelled_scenario_request_instance.to_dict()
# create an instance of ChangePaymentPlanCancelledScenarioRequest from a dict
change_payment_plan_cancelled_scenario_request_from_dict = ChangePaymentPlanCancelledScenarioRequest.from_dict(change_payment_plan_cancelled_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
