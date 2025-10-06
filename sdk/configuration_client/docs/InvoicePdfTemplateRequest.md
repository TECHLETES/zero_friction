# InvoicePdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional] 
**cost_allocation** | **bool** |  | [optional] 
**show_country** | **bool** |  | [optional] 
**show_balance** | **bool** |  | [optional] 
**show_vat_specs** | **bool** |  | [optional] 
**show_custom_information** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.invoice_pdf_template_request import InvoicePdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of InvoicePdfTemplateRequest from a JSON string
invoice_pdf_template_request_instance = InvoicePdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(InvoicePdfTemplateRequest.to_json())

# convert the object into a dict
invoice_pdf_template_request_dict = invoice_pdf_template_request_instance.to_dict()
# create an instance of InvoicePdfTemplateRequest from a dict
invoice_pdf_template_request_from_dict = InvoicePdfTemplateRequest.from_dict(invoice_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


