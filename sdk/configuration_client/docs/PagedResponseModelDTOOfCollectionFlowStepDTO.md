# PagedResponseModelDTOOfCollectionFlowStepDTO


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
from configuration_client.models.paged_response_model_dtoof_collection_flow_step_dto import PagedResponseModelDTOOfCollectionFlowStepDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PagedResponseModelDTOOfCollectionFlowStepDTO from a JSON string
paged_response_model_dtoof_collection_flow_step_dto_instance = PagedResponseModelDTOOfCollectionFlowStepDTO.from_json(json)
# print the JSON string representation of the object
print(PagedResponseModelDTOOfCollectionFlowStepDTO.to_json())

# convert the object into a dict
paged_response_model_dtoof_collection_flow_step_dto_dict = paged_response_model_dtoof_collection_flow_step_dto_instance.to_dict()
# create an instance of PagedResponseModelDTOOfCollectionFlowStepDTO from a dict
paged_response_model_dtoof_collection_flow_step_dto_from_dict = PagedResponseModelDTOOfCollectionFlowStepDTO.from_dict(paged_response_model_dtoof_collection_flow_step_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


