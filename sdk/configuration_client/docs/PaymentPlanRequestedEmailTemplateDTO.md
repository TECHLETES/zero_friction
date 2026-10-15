# PaymentPlanRequestedEmailTemplateDTO


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
from configuration_client.models.payment_plan_requested_email_template_dto import PaymentPlanRequestedEmailTemplateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanRequestedEmailTemplateDTO from a JSON string
payment_plan_requested_email_template_dto_instance = PaymentPlanRequestedEmailTemplateDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanRequestedEmailTemplateDTO.to_json())

# convert the object into a dict
payment_plan_requested_email_template_dto_dict = payment_plan_requested_email_template_dto_instance.to_dict()
# create an instance of PaymentPlanRequestedEmailTemplateDTO from a dict
payment_plan_requested_email_template_dto_from_dict = PaymentPlanRequestedEmailTemplateDTO.from_dict(payment_plan_requested_email_template_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


