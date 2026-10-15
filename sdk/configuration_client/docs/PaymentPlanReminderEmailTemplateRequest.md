# PaymentPlanReminderEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.payment_plan_reminder_email_template_request import PaymentPlanReminderEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanReminderEmailTemplateRequest from a JSON string
payment_plan_reminder_email_template_request_instance = PaymentPlanReminderEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanReminderEmailTemplateRequest.to_json())

# convert the object into a dict
payment_plan_reminder_email_template_request_dict = payment_plan_reminder_email_template_request_instance.to_dict()
# create an instance of PaymentPlanReminderEmailTemplateRequest from a dict
payment_plan_reminder_email_template_request_from_dict = PaymentPlanReminderEmailTemplateRequest.from_dict(payment_plan_reminder_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


