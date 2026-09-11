# PaymentPlanActivatedEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.payment_plan_activated_email_template_request import PaymentPlanActivatedEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanActivatedEmailTemplateRequest from a JSON string
payment_plan_activated_email_template_request_instance = PaymentPlanActivatedEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanActivatedEmailTemplateRequest.to_json())

# convert the object into a dict
payment_plan_activated_email_template_request_dict = payment_plan_activated_email_template_request_instance.to_dict()
# create an instance of PaymentPlanActivatedEmailTemplateRequest from a dict
payment_plan_activated_email_template_request_from_dict = PaymentPlanActivatedEmailTemplateRequest.from_dict(payment_plan_activated_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


