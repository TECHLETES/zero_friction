# CommunicationEntryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**subject_subtype** | **str** |  | [optional]
**subject_id** | **str** |  | [optional]
**reference** | **str** |  | [optional]
**communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional]
**title** | **str** |  | [optional]
**target** | [**CommunicationTargetDTO**](CommunicationTargetDTO.md) |  | [optional]
**sent_requested** | **bool** |  | [optional]
**sent_request_id** | **str** |  | [optional]
**sent** | **bool** |  | [optional]
**sent_date** | **datetime** |  | [optional]
**finished** | **bool** |  | [optional]
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional]
**communication_provider_error** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional]
**failure_details** | **str** |  | [optional]
**communication_entry_status** | [**CommunicationEntryStatus**](CommunicationEntryStatus.md) |  | [optional]
**subject_reference_parameters** | [**SubjectReferenceParametersDTO**](SubjectReferenceParametersDTO.md) |  | [optional]
**communication_entry_id** | **str** |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from communication_client.models.communication_entry_dto import CommunicationEntryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationEntryDTO from a JSON string
communication_entry_dto_instance = CommunicationEntryDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationEntryDTO.to_json())

# convert the object into a dict
communication_entry_dto_dict = communication_entry_dto_instance.to_dict()
# create an instance of CommunicationEntryDTO from a dict
communication_entry_dto_from_dict = CommunicationEntryDTO.from_dict(communication_entry_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
