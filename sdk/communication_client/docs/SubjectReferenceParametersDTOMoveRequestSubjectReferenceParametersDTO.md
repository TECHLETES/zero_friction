# SubjectReferenceParametersDTOMoveRequestSubjectReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**move_request_type** | [**MoveRequestType**](MoveRequestType.md) |  | [optional] 
**move_request_number** | **str** |  | [optional] 

## Example

```python
from communication_client.models.subject_reference_parameters_dto_move_request_subject_reference_parameters_dto import SubjectReferenceParametersDTOMoveRequestSubjectReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SubjectReferenceParametersDTOMoveRequestSubjectReferenceParametersDTO from a JSON string
subject_reference_parameters_dto_move_request_subject_reference_parameters_dto_instance = SubjectReferenceParametersDTOMoveRequestSubjectReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(SubjectReferenceParametersDTOMoveRequestSubjectReferenceParametersDTO.to_json())

# convert the object into a dict
subject_reference_parameters_dto_move_request_subject_reference_parameters_dto_dict = subject_reference_parameters_dto_move_request_subject_reference_parameters_dto_instance.to_dict()
# create an instance of SubjectReferenceParametersDTOMoveRequestSubjectReferenceParametersDTO from a dict
subject_reference_parameters_dto_move_request_subject_reference_parameters_dto_from_dict = SubjectReferenceParametersDTOMoveRequestSubjectReferenceParametersDTO.from_dict(subject_reference_parameters_dto_move_request_subject_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


