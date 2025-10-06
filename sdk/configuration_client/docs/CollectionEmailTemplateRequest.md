# CollectionEmailTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**attachments** | [**List[TemplateAttachmentRequest]**](TemplateAttachmentRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.collection_email_template_request import CollectionEmailTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionEmailTemplateRequest from a JSON string
collection_email_template_request_instance = CollectionEmailTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(CollectionEmailTemplateRequest.to_json())

# convert the object into a dict
collection_email_template_request_dict = collection_email_template_request_instance.to_dict()
# create an instance of CollectionEmailTemplateRequest from a dict
collection_email_template_request_from_dict = CollectionEmailTemplateRequest.from_dict(collection_email_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


