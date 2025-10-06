# TemplateAttachmentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**internal_file_path** | **str** |  | [optional] 
**file_name** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.template_attachment_dto import TemplateAttachmentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TemplateAttachmentDTO from a JSON string
template_attachment_dto_instance = TemplateAttachmentDTO.from_json(json)
# print the JSON string representation of the object
print(TemplateAttachmentDTO.to_json())

# convert the object into a dict
template_attachment_dto_dict = template_attachment_dto_instance.to_dict()
# create an instance of TemplateAttachmentDTO from a dict
template_attachment_dto_from_dict = TemplateAttachmentDTO.from_dict(template_attachment_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


