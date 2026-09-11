# PaymentPlanRecalculatedPdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**show_country** | **bool** |  | [optional]
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional]

## Example

```python
from configuration_client.models.payment_plan_recalculated_pdf_template_request import PaymentPlanRecalculatedPdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanRecalculatedPdfTemplateRequest from a JSON string
payment_plan_recalculated_pdf_template_request_instance = PaymentPlanRecalculatedPdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanRecalculatedPdfTemplateRequest.to_json())

# convert the object into a dict
payment_plan_recalculated_pdf_template_request_dict = payment_plan_recalculated_pdf_template_request_instance.to_dict()
# create an instance of PaymentPlanRecalculatedPdfTemplateRequest from a dict
payment_plan_recalculated_pdf_template_request_from_dict = PaymentPlanRecalculatedPdfTemplateRequest.from_dict(payment_plan_recalculated_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
