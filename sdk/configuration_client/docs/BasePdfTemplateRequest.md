# BasePdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.base_pdf_template_request import BasePdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BasePdfTemplateRequest from a JSON string
base_pdf_template_request_instance = BasePdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(BasePdfTemplateRequest.to_json())

# convert the object into a dict
base_pdf_template_request_dict = base_pdf_template_request_instance.to_dict()
# create an instance of BasePdfTemplateRequest from a dict
base_pdf_template_request_from_dict = BasePdfTemplateRequest.from_dict(base_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


