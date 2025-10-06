# CollectionFlowStepDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CollectionFlowStepDTO]**](CollectionFlowStepDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.collection_flow_step_dto_paged_response_model_dto import CollectionFlowStepDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionFlowStepDTOPagedResponseModelDTO from a JSON string
collection_flow_step_dto_paged_response_model_dto_instance = CollectionFlowStepDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionFlowStepDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
collection_flow_step_dto_paged_response_model_dto_dict = collection_flow_step_dto_paged_response_model_dto_instance.to_dict()
# create an instance of CollectionFlowStepDTOPagedResponseModelDTO from a dict
collection_flow_step_dto_paged_response_model_dto_from_dict = CollectionFlowStepDTOPagedResponseModelDTO.from_dict(collection_flow_step_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


