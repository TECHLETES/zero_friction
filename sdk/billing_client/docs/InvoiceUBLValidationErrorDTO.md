# InvoiceUBLValidationErrorDTO

Represents a UBL validation error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**originator_type** | [**EntitySubjectType**](EntitySubjectType.md) | Type of the originator of the error | [optional] 
**originator_id** | **str** | Identifier of the originator | [optional] 
**message** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) | Localized error message | [optional] 

## Example

```python
from billing_client.models.invoice_ubl_validation_error_dto import InvoiceUBLValidationErrorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceUBLValidationErrorDTO from a JSON string
invoice_ubl_validation_error_dto_instance = InvoiceUBLValidationErrorDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceUBLValidationErrorDTO.to_json())

# convert the object into a dict
invoice_ubl_validation_error_dto_dict = invoice_ubl_validation_error_dto_instance.to_dict()
# create an instance of InvoiceUBLValidationErrorDTO from a dict
invoice_ubl_validation_error_dto_from_dict = InvoiceUBLValidationErrorDTO.from_dict(invoice_ubl_validation_error_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


