# PaymentPlanCancelledEmailTemplateDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional]
**attachments** | [**List[TemplateAttachmentDTO]**](TemplateAttachmentDTO.md) |  | [optional]
**file_name** | **str** |  | [optional]
**use_case** | [**TemplateUsecase**](TemplateUsecase.md) |  | [optional]
**use_build_in** | **bool** |  | [optional]
**custom_template_internal_file_path** | **str** |  | [optional]
**custom_template_file_name** | **str** |  | [optional]
**translation_status** | [**TranslationStatus**](TranslationStatus.md) |  | [optional]

## Example

```python
from configuration_client.models.payment_plan_cancelled_email_template_dto import PaymentPlanCancelledEmailTemplateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanCancelledEmailTemplateDTO from a JSON string
payment_plan_cancelled_email_template_dto_instance = PaymentPlanCancelledEmailTemplateDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanCancelledEmailTemplateDTO.to_json())

# convert the object into a dict
payment_plan_cancelled_email_template_dto_dict = payment_plan_cancelled_email_template_dto_instance.to_dict()
# create an instance of PaymentPlanCancelledEmailTemplateDTO from a dict
payment_plan_cancelled_email_template_dto_from_dict = PaymentPlanCancelledEmailTemplateDTO.from_dict(payment_plan_cancelled_email_template_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
