# CommunicationEntryOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**failed** | **int** |  | [optional] 

## Example

```python
from communication_client.models.communication_entry_overview_count_dto import CommunicationEntryOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationEntryOverviewCountDTO from a JSON string
communication_entry_overview_count_dto_instance = CommunicationEntryOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationEntryOverviewCountDTO.to_json())

# convert the object into a dict
communication_entry_overview_count_dto_dict = communication_entry_overview_count_dto_instance.to_dict()
# create an instance of CommunicationEntryOverviewCountDTO from a dict
communication_entry_overview_count_dto_from_dict = CommunicationEntryOverviewCountDTO.from_dict(communication_entry_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


