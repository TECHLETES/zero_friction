# BasePdfTemplateRequestUpdateAnnualStatementPdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**show_country** | **bool** |  | [optional]
**show_balance** | **bool** |  | [optional]
**show_vat_specs** | **bool** |  | [optional]
**show_custom_information** | **bool** |  | [optional]
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional]

## Example

```python
from configuration_client.models.base_pdf_template_request_update_annual_statement_pdf_template_request import BasePdfTemplateRequestUpdateAnnualStatementPdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BasePdfTemplateRequestUpdateAnnualStatementPdfTemplateRequest from a JSON string
base_pdf_template_request_update_annual_statement_pdf_template_request_instance = BasePdfTemplateRequestUpdateAnnualStatementPdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(BasePdfTemplateRequestUpdateAnnualStatementPdfTemplateRequest.to_json())

# convert the object into a dict
base_pdf_template_request_update_annual_statement_pdf_template_request_dict = base_pdf_template_request_update_annual_statement_pdf_template_request_instance.to_dict()
# create an instance of BasePdfTemplateRequestUpdateAnnualStatementPdfTemplateRequest from a dict
base_pdf_template_request_update_annual_statement_pdf_template_request_from_dict = BasePdfTemplateRequestUpdateAnnualStatementPdfTemplateRequest.from_dict(base_pdf_template_request_update_annual_statement_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
