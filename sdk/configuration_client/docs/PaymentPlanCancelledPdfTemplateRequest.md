# PaymentPlanCancelledPdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**show_country** | **bool** |  | [optional] 
**show_installment_details** | **bool** |  | [optional] 
**show_payment_instructions** | **bool** |  | [optional] 
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.payment_plan_cancelled_pdf_template_request import PaymentPlanCancelledPdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanCancelledPdfTemplateRequest from a JSON string
payment_plan_cancelled_pdf_template_request_instance = PaymentPlanCancelledPdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanCancelledPdfTemplateRequest.to_json())

# convert the object into a dict
payment_plan_cancelled_pdf_template_request_dict = payment_plan_cancelled_pdf_template_request_instance.to_dict()
# create an instance of PaymentPlanCancelledPdfTemplateRequest from a dict
payment_plan_cancelled_pdf_template_request_from_dict = PaymentPlanCancelledPdfTemplateRequest.from_dict(payment_plan_cancelled_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


