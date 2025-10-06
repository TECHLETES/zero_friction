# CreditNotePdfTemplateRequest


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
from configuration_client.models.credit_note_pdf_template_request import CreditNotePdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreditNotePdfTemplateRequest from a JSON string
credit_note_pdf_template_request_instance = CreditNotePdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(CreditNotePdfTemplateRequest.to_json())

# convert the object into a dict
credit_note_pdf_template_request_dict = credit_note_pdf_template_request_instance.to_dict()
# create an instance of CreditNotePdfTemplateRequest from a dict
credit_note_pdf_template_request_from_dict = CreditNotePdfTemplateRequest.from_dict(credit_note_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


