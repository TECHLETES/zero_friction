# EndNotePdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost_allocation** | **bool** |  | [optional] 
**show_country** | **bool** |  | [optional] 
**show_price_formulae** | **bool** |  | [optional] 
**show_balance** | **bool** |  | [optional] 
**show_vat_specs** | **bool** |  | [optional] 
**show_custom_information** | **bool** |  | [optional] 
**unit_price_excl_vat_for_persons** | **bool** |  | [optional] 
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.end_note_pdf_template_request import EndNotePdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EndNotePdfTemplateRequest from a JSON string
end_note_pdf_template_request_instance = EndNotePdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(EndNotePdfTemplateRequest.to_json())

# convert the object into a dict
end_note_pdf_template_request_dict = end_note_pdf_template_request_instance.to_dict()
# create an instance of EndNotePdfTemplateRequest from a dict
end_note_pdf_template_request_from_dict = EndNotePdfTemplateRequest.from_dict(end_note_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


