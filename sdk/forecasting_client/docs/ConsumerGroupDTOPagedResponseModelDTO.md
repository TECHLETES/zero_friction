# ConsumerGroupDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[ConsumerGroupDTO]**](ConsumerGroupDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from forecasting_client.models.consumer_group_dto_paged_response_model_dto import ConsumerGroupDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumerGroupDTOPagedResponseModelDTO from a JSON string
consumer_group_dto_paged_response_model_dto_instance = ConsumerGroupDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumerGroupDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
consumer_group_dto_paged_response_model_dto_dict = consumer_group_dto_paged_response_model_dto_instance.to_dict()
# create an instance of ConsumerGroupDTOPagedResponseModelDTO from a dict
consumer_group_dto_paged_response_model_dto_from_dict = ConsumerGroupDTOPagedResponseModelDTO.from_dict(consumer_group_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


