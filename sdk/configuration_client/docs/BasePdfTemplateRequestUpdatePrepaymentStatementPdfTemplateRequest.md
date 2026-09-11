# BasePdfTemplateRequestUpdatePrepaymentStatementPdfTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**show_country** | **bool** |  | [optional]
**show_vat_specs** | **bool** |  | [optional]
**show_custom_information** | **bool** |  | [optional]
**is_closing_statement** | **bool** |  | [optional]
**envelope_settings** | [**EnvelopeSettingsRequest**](EnvelopeSettingsRequest.md) |  | [optional]

## Example

```python
from configuration_client.models.base_pdf_template_request_update_prepayment_statement_pdf_template_request import BasePdfTemplateRequestUpdatePrepaymentStatementPdfTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BasePdfTemplateRequestUpdatePrepaymentStatementPdfTemplateRequest from a JSON string
base_pdf_template_request_update_prepayment_statement_pdf_template_request_instance = BasePdfTemplateRequestUpdatePrepaymentStatementPdfTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(BasePdfTemplateRequestUpdatePrepaymentStatementPdfTemplateRequest.to_json())

# convert the object into a dict
base_pdf_template_request_update_prepayment_statement_pdf_template_request_dict = base_pdf_template_request_update_prepayment_statement_pdf_template_request_instance.to_dict()
# create an instance of BasePdfTemplateRequestUpdatePrepaymentStatementPdfTemplateRequest from a dict
base_pdf_template_request_update_prepayment_statement_pdf_template_request_from_dict = BasePdfTemplateRequestUpdatePrepaymentStatementPdfTemplateRequest.from_dict(base_pdf_template_request_update_prepayment_statement_pdf_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
