# BaseEmailTemplateDTOPortalResetPasswordEmailTemplateDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
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
from configuration_client.models.base_email_template_dto_portal_reset_password_email_template_dto import BaseEmailTemplateDTOPortalResetPasswordEmailTemplateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseEmailTemplateDTOPortalResetPasswordEmailTemplateDTO from a JSON string
base_email_template_dto_portal_reset_password_email_template_dto_instance = BaseEmailTemplateDTOPortalResetPasswordEmailTemplateDTO.from_json(json)
# print the JSON string representation of the object
print(BaseEmailTemplateDTOPortalResetPasswordEmailTemplateDTO.to_json())

# convert the object into a dict
base_email_template_dto_portal_reset_password_email_template_dto_dict = base_email_template_dto_portal_reset_password_email_template_dto_instance.to_dict()
# create an instance of BaseEmailTemplateDTOPortalResetPasswordEmailTemplateDTO from a dict
base_email_template_dto_portal_reset_password_email_template_dto_from_dict = BaseEmailTemplateDTOPortalResetPasswordEmailTemplateDTO.from_dict(base_email_template_dto_portal_reset_password_email_template_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


