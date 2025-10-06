# AdvanceEmailTemplateDTO


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
from configuration_client.models.advance_email_template_dto import AdvanceEmailTemplateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AdvanceEmailTemplateDTO from a JSON string
advance_email_template_dto_instance = AdvanceEmailTemplateDTO.from_json(json)
# print the JSON string representation of the object
print(AdvanceEmailTemplateDTO.to_json())

# convert the object into a dict
advance_email_template_dto_dict = advance_email_template_dto_instance.to_dict()
# create an instance of AdvanceEmailTemplateDTO from a dict
advance_email_template_dto_from_dict = AdvanceEmailTemplateDTO.from_dict(advance_email_template_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


