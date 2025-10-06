# ModelDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[ModelDTO]**](ModelDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.model_dto_paged_response_model_dto import ModelDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ModelDTOPagedResponseModelDTO from a JSON string
model_dto_paged_response_model_dto_instance = ModelDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(ModelDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
model_dto_paged_response_model_dto_dict = model_dto_paged_response_model_dto_instance.to_dict()
# create an instance of ModelDTOPagedResponseModelDTO from a dict
model_dto_paged_response_model_dto_from_dict = ModelDTOPagedResponseModelDTO.from_dict(model_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


