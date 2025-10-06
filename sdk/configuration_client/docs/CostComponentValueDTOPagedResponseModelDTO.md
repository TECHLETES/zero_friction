# CostComponentValueDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CostComponentValueDTO]**](CostComponentValueDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.cost_component_value_dto_paged_response_model_dto import CostComponentValueDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostComponentValueDTOPagedResponseModelDTO from a JSON string
cost_component_value_dto_paged_response_model_dto_instance = CostComponentValueDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(CostComponentValueDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
cost_component_value_dto_paged_response_model_dto_dict = cost_component_value_dto_paged_response_model_dto_instance.to_dict()
# create an instance of CostComponentValueDTOPagedResponseModelDTO from a dict
cost_component_value_dto_paged_response_model_dto_from_dict = CostComponentValueDTOPagedResponseModelDTO.from_dict(cost_component_value_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


