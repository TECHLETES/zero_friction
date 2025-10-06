# CommunicationEntryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
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
**failure_details** | **str** |  | [optional] 
**communication_entry_status** | [**CommunicationEntryStatus**](CommunicationEntryStatus.md) |  | [optional] 

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


