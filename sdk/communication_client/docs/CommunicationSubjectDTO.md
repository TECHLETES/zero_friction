# CommunicationSubjectDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional]
**subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**subject_sub_type** | **str** |  | [optional]
**subject_id** | **str** |  | [optional]
**customer_id** | **str** |  | [optional]
**customer_display_name** | **str** |  | [optional]
**customer_account_number** | **str** |  | [optional]
**communication_entry_id** | **str** |  | [optional]
**title** | **str** |  | [optional]
**communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional]
**sent** | **bool** |  | [optional]
**is_ignored** | **bool** |  | [optional]
**sent_date** | **datetime** |  | [optional]
**communication_entry_status** | [**CommunicationEntryStatus**](CommunicationEntryStatus.md) |  | [optional]
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional]
**communication_provider_error** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional]
**failure_details** | **str** |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**subject_reference_parameters** | [**SubjectReferenceParametersDTO**](SubjectReferenceParametersDTO.md) |  | [optional]

## Example

```python
from communication_client.models.communication_subject_dto import CommunicationSubjectDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationSubjectDTO from a JSON string
communication_subject_dto_instance = CommunicationSubjectDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationSubjectDTO.to_json())

# convert the object into a dict
communication_subject_dto_dict = communication_subject_dto_instance.to_dict()
# create an instance of CommunicationSubjectDTO from a dict
communication_subject_dto_from_dict = CommunicationSubjectDTO.from_dict(communication_subject_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
