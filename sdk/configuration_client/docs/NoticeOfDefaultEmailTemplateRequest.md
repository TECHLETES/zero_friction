# NoticeOfDefaultEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.notice_of_default_email_template_request import NoticeOfDefaultEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of NoticeOfDefaultEmailTemplateRequest from a JSON string
notice_of_default_email_template_request_instance = NoticeOfDefaultEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(NoticeOfDefaultEmailTemplateRequest.to_json())

# convert the object into a dict
notice_of_default_email_template_request_dict = notice_of_default_email_template_request_instance.to_dict()
# create an instance of NoticeOfDefaultEmailTemplateRequest from a dict
notice_of_default_email_template_request_from_dict = NoticeOfDefaultEmailTemplateRequest.from_dict(notice_of_default_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


