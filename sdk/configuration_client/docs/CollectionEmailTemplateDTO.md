# CollectionEmailTemplateDTO


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
from configuration_client.models.collection_email_template_dto import CollectionEmailTemplateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionEmailTemplateDTO from a JSON string
collection_email_template_dto_instance = CollectionEmailTemplateDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionEmailTemplateDTO.to_json())

# convert the object into a dict
collection_email_template_dto_dict = collection_email_template_dto_instance.to_dict()
# create an instance of CollectionEmailTemplateDTO from a dict
collection_email_template_dto_from_dict = CollectionEmailTemplateDTO.from_dict(collection_email_template_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


