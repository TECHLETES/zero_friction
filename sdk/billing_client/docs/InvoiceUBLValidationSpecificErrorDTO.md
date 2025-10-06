# InvoiceUBLValidationSpecificErrorDTO

Represents a specific UBL validation error for a single invoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | **str** | Identifier of the invoice with the error | [optional] 
**invoice_number** | **str** | Invoice number | [optional] 
**error_subject** | [**EntitySubjectType**](EntitySubjectType.md) | Type of entity that caused the error | [optional] 
**error_subject_id** | **str** | Identifier of the entity that caused the error | [optional] 
**error_message** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) | Localized error message | [optional] 

## Example

```python
from billing_client.models.invoice_ubl_validation_specific_error_dto import InvoiceUBLValidationSpecificErrorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceUBLValidationSpecificErrorDTO from a JSON string
invoice_ubl_validation_specific_error_dto_instance = InvoiceUBLValidationSpecificErrorDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceUBLValidationSpecificErrorDTO.to_json())

# convert the object into a dict
invoice_ubl_validation_specific_error_dto_dict = invoice_ubl_validation_specific_error_dto_instance.to_dict()
# create an instance of InvoiceUBLValidationSpecificErrorDTO from a dict
invoice_ubl_validation_specific_error_dto_from_dict = InvoiceUBLValidationSpecificErrorDTO.from_dict(invoice_ubl_validation_specific_error_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


