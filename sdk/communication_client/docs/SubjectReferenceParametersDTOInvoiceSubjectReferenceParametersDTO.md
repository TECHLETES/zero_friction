# SubjectReferenceParametersDTOInvoiceSubjectReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**invoice_num** | **str** |  | [optional]
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional]

## Example

```python
from communication_client.models.subject_reference_parameters_dto_invoice_subject_reference_parameters_dto import SubjectReferenceParametersDTOInvoiceSubjectReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SubjectReferenceParametersDTOInvoiceSubjectReferenceParametersDTO from a JSON string
subject_reference_parameters_dto_invoice_subject_reference_parameters_dto_instance = SubjectReferenceParametersDTOInvoiceSubjectReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(SubjectReferenceParametersDTOInvoiceSubjectReferenceParametersDTO.to_json())

# convert the object into a dict
subject_reference_parameters_dto_invoice_subject_reference_parameters_dto_dict = subject_reference_parameters_dto_invoice_subject_reference_parameters_dto_instance.to_dict()
# create an instance of SubjectReferenceParametersDTOInvoiceSubjectReferenceParametersDTO from a dict
subject_reference_parameters_dto_invoice_subject_reference_parameters_dto_from_dict = SubjectReferenceParametersDTOInvoiceSubjectReferenceParametersDTO.from_dict(subject_reference_parameters_dto_invoice_subject_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
