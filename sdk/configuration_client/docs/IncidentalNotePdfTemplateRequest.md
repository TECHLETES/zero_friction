# IncidentalNotePdfTemplateRequest


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
from configuration_client.models.incidental_note_pdf_template_request import IncidentalNotePdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IncidentalNotePdfTemplateRequest from a JSON string
incidental_note_pdf_template_request_instance = IncidentalNotePdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(IncidentalNotePdfTemplateRequest.to_json())

# convert the object into a dict
incidental_note_pdf_template_request_dict = incidental_note_pdf_template_request_instance.to_dict()
# create an instance of IncidentalNotePdfTemplateRequest from a dict
incidental_note_pdf_template_request_from_dict = IncidentalNotePdfTemplateRequest.from_dict(incidental_note_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


