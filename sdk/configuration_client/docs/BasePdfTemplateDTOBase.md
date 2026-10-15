# BasePdfTemplateDTOBase


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelope_settings** | [**EnvelopeSettingsDTO**](EnvelopeSettingsDTO.md) |  | [optional] 
**render_header_footer** | **bool** |  | [optional] 
**header_text** | **str** |  | [optional] 
**footer_text** | **str** |  | [optional] 
**override_external_printing_checks** | **bool** |  | [optional] 
**supports_external_printing** | **bool** |  | [optional] 
**file_name** | **str** |  | [optional] 
**use_case** | [**TemplateUsecase**](TemplateUsecase.md) |  | [optional] 
**use_build_in** | **bool** |  | [optional] 
**custom_template_internal_file_path** | **str** |  | [optional] 
**custom_template_file_name** | **str** |  | [optional] 
**translation_status** | [**TranslationStatus**](TranslationStatus.md) |  | [optional] 

## Example

```python
from configuration_client.models.base_pdf_template_dto_base import BasePdfTemplateDTOBase

# TODO update the JSON string below
json = "{}"
# create an instance of BasePdfTemplateDTOBase from a JSON string
base_pdf_template_dto_base_instance = BasePdfTemplateDTOBase.from_json(json)
# print the JSON string representation of the object
print(BasePdfTemplateDTOBase.to_json())

# convert the object into a dict
base_pdf_template_dto_base_dict = base_pdf_template_dto_base_instance.to_dict()
# create an instance of BasePdfTemplateDTOBase from a dict
base_pdf_template_dto_base_from_dict = BasePdfTemplateDTOBase.from_dict(base_pdf_template_dto_base_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


