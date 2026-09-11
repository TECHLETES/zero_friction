# OutgoingMutationReferenceParametersDTOOutgoingMutationInvoiceReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**invoice_num** | **str** |  | [optional] 
**period_start_date_time** | **datetime** |  | [optional] 
**period_end_date_time** | **datetime** |  | [optional] 
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional] 

## Example

```python
from billing_client.models.outgoing_mutation_reference_parameters_dto_outgoing_mutation_invoice_reference_parameters_dto import OutgoingMutationReferenceParametersDTOOutgoingMutationInvoiceReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMutationReferenceParametersDTOOutgoingMutationInvoiceReferenceParametersDTO from a JSON string
outgoing_mutation_reference_parameters_dto_outgoing_mutation_invoice_reference_parameters_dto_instance = OutgoingMutationReferenceParametersDTOOutgoingMutationInvoiceReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMutationReferenceParametersDTOOutgoingMutationInvoiceReferenceParametersDTO.to_json())

# convert the object into a dict
outgoing_mutation_reference_parameters_dto_outgoing_mutation_invoice_reference_parameters_dto_dict = outgoing_mutation_reference_parameters_dto_outgoing_mutation_invoice_reference_parameters_dto_instance.to_dict()
# create an instance of OutgoingMutationReferenceParametersDTOOutgoingMutationInvoiceReferenceParametersDTO from a dict
outgoing_mutation_reference_parameters_dto_outgoing_mutation_invoice_reference_parameters_dto_from_dict = OutgoingMutationReferenceParametersDTOOutgoingMutationInvoiceReferenceParametersDTO.from_dict(outgoing_mutation_reference_parameters_dto_outgoing_mutation_invoice_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


