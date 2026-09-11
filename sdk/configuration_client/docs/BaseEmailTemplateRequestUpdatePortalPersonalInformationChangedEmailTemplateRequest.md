# BaseEmailTemplateRequestUpdatePortalPersonalInformationChangedEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**subject** | **str** |  | [optional]
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional]

## Example

```python
from configuration_client.models.base_email_template_request_update_portal_personal_information_changed_email_template_request import BaseEmailTemplateRequestUpdatePortalPersonalInformationChangedEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BaseEmailTemplateRequestUpdatePortalPersonalInformationChangedEmailTemplateRequest from a JSON string
base_email_template_request_update_portal_personal_information_changed_email_template_request_instance = BaseEmailTemplateRequestUpdatePortalPersonalInformationChangedEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(BaseEmailTemplateRequestUpdatePortalPersonalInformationChangedEmailTemplateRequest.to_json())

# convert the object into a dict
base_email_template_request_update_portal_personal_information_changed_email_template_request_dict = base_email_template_request_update_portal_personal_information_changed_email_template_request_instance.to_dict()
# create an instance of BaseEmailTemplateRequestUpdatePortalPersonalInformationChangedEmailTemplateRequest from a dict
base_email_template_request_update_portal_personal_information_changed_email_template_request_from_dict = BaseEmailTemplateRequestUpdatePortalPersonalInformationChangedEmailTemplateRequest.from_dict(base_email_template_request_update_portal_personal_information_changed_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
