# TemplateAttachmentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**internal_file_path** | **str** |  | [optional] 
**file_name** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.template_attachment_request import TemplateAttachmentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TemplateAttachmentRequest from a JSON string
template_attachment_request_instance = TemplateAttachmentRequest.from_json(json)
# print the JSON string representation of the object
print(TemplateAttachmentRequest.to_json())

# convert the object into a dict
template_attachment_request_dict = template_attachment_request_instance.to_dict()
# create an instance of TemplateAttachmentRequest from a dict
template_attachment_request_from_dict = TemplateAttachmentRequest.from_dict(template_attachment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


