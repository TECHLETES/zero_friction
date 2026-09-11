# GetCommunicationEntriesQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional]
**exclude_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional]
**exclude_communication_entry_status** | [**CommunicationEntryStatus**](CommunicationEntryStatus.md) |  | [optional]
**communication_entry_status** | [**CommunicationEntryStatus**](CommunicationEntryStatus.md) |  | [optional]
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**subject_sub_type** | **str** |  | [optional]
**entity_subject_id** | **str** |  | [optional]
**failure_reason_code** | **int** |  | [optional]
**sent_start_date_time_offset** | **datetime** |  | [optional]
**sent_end_date_time_offset** | **datetime** |  | [optional]
**customer_id** | **str** |  | [optional]
**flex_search** | **str** |  | [optional]
**include_only_ids** | **List[str]** |  | [optional]
**exclude_ids** | **List[str]** |  | [optional]
**page_size** | **int** |  | [optional]

## Example

```python
from communication_client.models.get_communication_entries_query_params import GetCommunicationEntriesQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetCommunicationEntriesQueryParams from a JSON string
get_communication_entries_query_params_instance = GetCommunicationEntriesQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetCommunicationEntriesQueryParams.to_json())

# convert the object into a dict
get_communication_entries_query_params_dict = get_communication_entries_query_params_instance.to_dict()
# create an instance of GetCommunicationEntriesQueryParams from a dict
get_communication_entries_query_params_from_dict = GetCommunicationEntriesQueryParams.from_dict(get_communication_entries_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
