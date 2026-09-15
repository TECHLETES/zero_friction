# SubjectReferenceParametersDTOCustomerSubjectReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**customer_account_number** | **str** |  | [optional] 
**customer_display_name** | **str** |  | [optional] 

## Example

```python
from communication_client.models.subject_reference_parameters_dto_customer_subject_reference_parameters_dto import SubjectReferenceParametersDTOCustomerSubjectReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SubjectReferenceParametersDTOCustomerSubjectReferenceParametersDTO from a JSON string
subject_reference_parameters_dto_customer_subject_reference_parameters_dto_instance = SubjectReferenceParametersDTOCustomerSubjectReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(SubjectReferenceParametersDTOCustomerSubjectReferenceParametersDTO.to_json())

# convert the object into a dict
subject_reference_parameters_dto_customer_subject_reference_parameters_dto_dict = subject_reference_parameters_dto_customer_subject_reference_parameters_dto_instance.to_dict()
# create an instance of SubjectReferenceParametersDTOCustomerSubjectReferenceParametersDTO from a dict
subject_reference_parameters_dto_customer_subject_reference_parameters_dto_from_dict = SubjectReferenceParametersDTOCustomerSubjectReferenceParametersDTO.from_dict(subject_reference_parameters_dto_customer_subject_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


