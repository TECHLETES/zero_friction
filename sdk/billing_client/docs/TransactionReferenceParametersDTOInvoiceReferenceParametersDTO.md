# TransactionReferenceParametersDTOInvoiceReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**invoice_num** | **str** |  | [optional]
**period_start_date_time** | **datetime** |  | [optional]
**period_end_date_time** | **datetime** |  | [optional]
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional]

## Example

```python
from billing_client.models.transaction_reference_parameters_dto_invoice_reference_parameters_dto import TransactionReferenceParametersDTOInvoiceReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionReferenceParametersDTOInvoiceReferenceParametersDTO from a JSON string
transaction_reference_parameters_dto_invoice_reference_parameters_dto_instance = TransactionReferenceParametersDTOInvoiceReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionReferenceParametersDTOInvoiceReferenceParametersDTO.to_json())

# convert the object into a dict
transaction_reference_parameters_dto_invoice_reference_parameters_dto_dict = transaction_reference_parameters_dto_invoice_reference_parameters_dto_instance.to_dict()
# create an instance of TransactionReferenceParametersDTOInvoiceReferenceParametersDTO from a dict
transaction_reference_parameters_dto_invoice_reference_parameters_dto_from_dict = TransactionReferenceParametersDTOInvoiceReferenceParametersDTO.from_dict(transaction_reference_parameters_dto_invoice_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
