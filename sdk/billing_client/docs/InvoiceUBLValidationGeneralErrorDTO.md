# InvoiceUBLValidationGeneralErrorDTO

Represents a general UBL validation error that applies to multiple invoices

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_message** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) | Localized error message | [optional] 

## Example

```python
from billing_client.models.invoice_ubl_validation_general_error_dto import InvoiceUBLValidationGeneralErrorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceUBLValidationGeneralErrorDTO from a JSON string
invoice_ubl_validation_general_error_dto_instance = InvoiceUBLValidationGeneralErrorDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceUBLValidationGeneralErrorDTO.to_json())

# convert the object into a dict
invoice_ubl_validation_general_error_dto_dict = invoice_ubl_validation_general_error_dto_instance.to_dict()
# create an instance of InvoiceUBLValidationGeneralErrorDTO from a dict
invoice_ubl_validation_general_error_dto_from_dict = InvoiceUBLValidationGeneralErrorDTO.from_dict(invoice_ubl_validation_general_error_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


