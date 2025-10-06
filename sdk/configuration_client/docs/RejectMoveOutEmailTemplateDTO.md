# RejectMoveOutEmailTemplateDTO


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
from configuration_client.models.reject_move_out_email_template_dto import RejectMoveOutEmailTemplateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RejectMoveOutEmailTemplateDTO from a JSON string
reject_move_out_email_template_dto_instance = RejectMoveOutEmailTemplateDTO.from_json(json)
# print the JSON string representation of the object
print(RejectMoveOutEmailTemplateDTO.to_json())

# convert the object into a dict
reject_move_out_email_template_dto_dict = reject_move_out_email_template_dto_instance.to_dict()
# create an instance of RejectMoveOutEmailTemplateDTO from a dict
reject_move_out_email_template_dto_from_dict = RejectMoveOutEmailTemplateDTO.from_dict(reject_move_out_email_template_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


