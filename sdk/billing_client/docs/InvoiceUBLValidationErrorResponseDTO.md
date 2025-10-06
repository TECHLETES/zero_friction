# InvoiceUBLValidationErrorResponseDTO

Represents UBL validation errors for invoices

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**general_errors** | [**List[InvoiceUBLValidationGeneralErrorDTO]**](InvoiceUBLValidationGeneralErrorDTO.md) | List of general validation errors that apply to multiple invoices | [optional] 
**specific_errors** | [**List[InvoiceUBLValidationSpecificErrorDTO]**](InvoiceUBLValidationSpecificErrorDTO.md) | List of specific validation errors for individual invoices | [optional] 
**unique_invoices_with_errors** | **int** | Number of unique invoices that have validation errors | [optional] [readonly] 

## Example

```python
from billing_client.models.invoice_ubl_validation_error_response_dto import InvoiceUBLValidationErrorResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceUBLValidationErrorResponseDTO from a JSON string
invoice_ubl_validation_error_response_dto_instance = InvoiceUBLValidationErrorResponseDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceUBLValidationErrorResponseDTO.to_json())

# convert the object into a dict
invoice_ubl_validation_error_response_dto_dict = invoice_ubl_validation_error_response_dto_instance.to_dict()
# create an instance of InvoiceUBLValidationErrorResponseDTO from a dict
invoice_ubl_validation_error_response_dto_from_dict = InvoiceUBLValidationErrorResponseDTO.from_dict(invoice_ubl_validation_error_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


