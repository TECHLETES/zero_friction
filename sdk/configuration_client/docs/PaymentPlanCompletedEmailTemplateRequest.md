# PaymentPlanCompletedEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional]
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional]

## Example

```python
from configuration_client.models.payment_plan_completed_email_template_request import PaymentPlanCompletedEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanCompletedEmailTemplateRequest from a JSON string
payment_plan_completed_email_template_request_instance = PaymentPlanCompletedEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanCompletedEmailTemplateRequest.to_json())

# convert the object into a dict
payment_plan_completed_email_template_request_dict = payment_plan_completed_email_template_request_instance.to_dict()
# create an instance of PaymentPlanCompletedEmailTemplateRequest from a dict
payment_plan_completed_email_template_request_from_dict = PaymentPlanCompletedEmailTemplateRequest.from_dict(payment_plan_completed_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
