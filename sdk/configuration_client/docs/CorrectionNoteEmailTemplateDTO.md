# CorrectionNoteEmailTemplateDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_name** | **str** |  | [optional] 
**use_case** | [**TemplateUsecase**](TemplateUsecase.md) |  | [optional] 
**use_build_in** | **bool** |  | [optional] [readonly] 
**custom_template_internal_file_path** | **str** |  | [optional] 
**custom_template_file_name** | **str** |  | [optional] 
**translation_status** | [**TranslationStatus**](TranslationStatus.md) |  | [optional] 
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentDTO]**](TemplateAttachmentDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.correction_note_email_template_dto import CorrectionNoteEmailTemplateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CorrectionNoteEmailTemplateDTO from a JSON string
correction_note_email_template_dto_instance = CorrectionNoteEmailTemplateDTO.from_json(json)
# print the JSON string representation of the object
print(CorrectionNoteEmailTemplateDTO.to_json())

# convert the object into a dict
correction_note_email_template_dto_dict = correction_note_email_template_dto_instance.to_dict()
# create an instance of CorrectionNoteEmailTemplateDTO from a dict
correction_note_email_template_dto_from_dict = CorrectionNoteEmailTemplateDTO.from_dict(correction_note_email_template_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


