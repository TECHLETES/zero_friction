# NoticeOfDefaultPdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional] 
**show_country** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.notice_of_default_pdf_template_request import NoticeOfDefaultPdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of NoticeOfDefaultPdfTemplateRequest from a JSON string
notice_of_default_pdf_template_request_instance = NoticeOfDefaultPdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(NoticeOfDefaultPdfTemplateRequest.to_json())

# convert the object into a dict
notice_of_default_pdf_template_request_dict = notice_of_default_pdf_template_request_instance.to_dict()
# create an instance of NoticeOfDefaultPdfTemplateRequest from a dict
notice_of_default_pdf_template_request_from_dict = NoticeOfDefaultPdfTemplateRequest.from_dict(notice_of_default_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


