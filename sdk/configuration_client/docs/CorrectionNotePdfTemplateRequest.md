# CorrectionNotePdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional] 
**show_country** | **bool** |  | [optional] 
**show_balance** | **bool** |  | [optional] 
**show_vat_specs** | **bool** |  | [optional] 
**show_custom_information** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.correction_note_pdf_template_request import CorrectionNotePdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CorrectionNotePdfTemplateRequest from a JSON string
correction_note_pdf_template_request_instance = CorrectionNotePdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(CorrectionNotePdfTemplateRequest.to_json())

# convert the object into a dict
correction_note_pdf_template_request_dict = correction_note_pdf_template_request_instance.to_dict()
# create an instance of CorrectionNotePdfTemplateRequest from a dict
correction_note_pdf_template_request_from_dict = CorrectionNotePdfTemplateRequest.from_dict(correction_note_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


