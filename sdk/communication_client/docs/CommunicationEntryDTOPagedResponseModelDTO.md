# CommunicationEntryDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CommunicationEntryDTO]**](CommunicationEntryDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from communication_client.models.communication_entry_dto_paged_response_model_dto import CommunicationEntryDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CommunicationEntryDTOPagedResponseModelDTO from a JSON string
communication_entry_dto_paged_response_model_dto_instance = CommunicationEntryDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(CommunicationEntryDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
communication_entry_dto_paged_response_model_dto_dict = communication_entry_dto_paged_response_model_dto_instance.to_dict()
# create an instance of CommunicationEntryDTOPagedResponseModelDTO from a dict
communication_entry_dto_paged_response_model_dto_from_dict = CommunicationEntryDTOPagedResponseModelDTO.from_dict(communication_entry_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


