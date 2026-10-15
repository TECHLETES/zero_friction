# PagedResponseModelDTOOfCommunicationEntryDTO


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
from communication_client.models.paged_response_model_dtoof_communication_entry_dto import PagedResponseModelDTOOfCommunicationEntryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PagedResponseModelDTOOfCommunicationEntryDTO from a JSON string
paged_response_model_dtoof_communication_entry_dto_instance = PagedResponseModelDTOOfCommunicationEntryDTO.from_json(json)
# print the JSON string representation of the object
print(PagedResponseModelDTOOfCommunicationEntryDTO.to_json())

# convert the object into a dict
paged_response_model_dtoof_communication_entry_dto_dict = paged_response_model_dtoof_communication_entry_dto_instance.to_dict()
# create an instance of PagedResponseModelDTOOfCommunicationEntryDTO from a dict
paged_response_model_dtoof_communication_entry_dto_from_dict = PagedResponseModelDTOOfCommunicationEntryDTO.from_dict(paged_response_model_dtoof_communication_entry_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


