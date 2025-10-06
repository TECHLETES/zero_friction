# CollectionPdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional] 
**show_country** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.collection_pdf_template_request import CollectionPdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionPdfTemplateRequest from a JSON string
collection_pdf_template_request_instance = CollectionPdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(CollectionPdfTemplateRequest.to_json())

# convert the object into a dict
collection_pdf_template_request_dict = collection_pdf_template_request_instance.to_dict()
# create an instance of CollectionPdfTemplateRequest from a dict
collection_pdf_template_request_from_dict = CollectionPdfTemplateRequest.from_dict(collection_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


