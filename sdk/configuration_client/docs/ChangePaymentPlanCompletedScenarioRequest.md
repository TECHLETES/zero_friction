# ChangePaymentPlanCompletedScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pdf_template** | [**PaymentPlanCompletedPdfTemplateRequest**](PaymentPlanCompletedPdfTemplateRequest.md) |  |
**email_template** | [**PaymentPlanCompletedEmailTemplateRequest**](PaymentPlanCompletedEmailTemplateRequest.md) |  |
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  |
**auto_fallback_to_postal** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.change_payment_plan_completed_scenario_request import ChangePaymentPlanCompletedScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangePaymentPlanCompletedScenarioRequest from a JSON string
change_payment_plan_completed_scenario_request_instance = ChangePaymentPlanCompletedScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangePaymentPlanCompletedScenarioRequest.to_json())

# convert the object into a dict
change_payment_plan_completed_scenario_request_dict = change_payment_plan_completed_scenario_request_instance.to_dict()
# create an instance of ChangePaymentPlanCompletedScenarioRequest from a dict
change_payment_plan_completed_scenario_request_from_dict = ChangePaymentPlanCompletedScenarioRequest.from_dict(change_payment_plan_completed_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
