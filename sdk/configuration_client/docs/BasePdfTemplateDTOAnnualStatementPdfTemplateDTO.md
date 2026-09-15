# BasePdfTemplateDTOAnnualStatementPdfTemplateDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**show_country** | **bool** |  | [optional] 
**show_balance** | **bool** |  | [optional] 
**show_vat_specs** | **bool** |  | [optional] 
**show_custom_information** | **bool** |  | [optional] 
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
from configuration_client.models.base_pdf_template_dto_annual_statement_pdf_template_dto import BasePdfTemplateDTOAnnualStatementPdfTemplateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BasePdfTemplateDTOAnnualStatementPdfTemplateDTO from a JSON string
base_pdf_template_dto_annual_statement_pdf_template_dto_instance = BasePdfTemplateDTOAnnualStatementPdfTemplateDTO.from_json(json)
# print the JSON string representation of the object
print(BasePdfTemplateDTOAnnualStatementPdfTemplateDTO.to_json())

# convert the object into a dict
base_pdf_template_dto_annual_statement_pdf_template_dto_dict = base_pdf_template_dto_annual_statement_pdf_template_dto_instance.to_dict()
# create an instance of BasePdfTemplateDTOAnnualStatementPdfTemplateDTO from a dict
base_pdf_template_dto_annual_statement_pdf_template_dto_from_dict = BasePdfTemplateDTOAnnualStatementPdfTemplateDTO.from_dict(base_pdf_template_dto_annual_statement_pdf_template_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


