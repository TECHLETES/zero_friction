# CollectionFlowDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CollectionFlowDTO]**](CollectionFlowDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.collection_flow_dto_paged_response_model_dto import CollectionFlowDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionFlowDTOPagedResponseModelDTO from a JSON string
collection_flow_dto_paged_response_model_dto_instance = CollectionFlowDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionFlowDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
collection_flow_dto_paged_response_model_dto_dict = collection_flow_dto_paged_response_model_dto_instance.to_dict()
# create an instance of CollectionFlowDTOPagedResponseModelDTO from a dict
collection_flow_dto_paged_response_model_dto_from_dict = CollectionFlowDTOPagedResponseModelDTO.from_dict(collection_flow_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


