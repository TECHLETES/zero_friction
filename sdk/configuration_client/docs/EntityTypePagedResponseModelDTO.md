# EntityTypePagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[EntityType]**](EntityType.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.entity_type_paged_response_model_dto import EntityTypePagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EntityTypePagedResponseModelDTO from a JSON string
entity_type_paged_response_model_dto_instance = EntityTypePagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(EntityTypePagedResponseModelDTO.to_json())

# convert the object into a dict
entity_type_paged_response_model_dto_dict = entity_type_paged_response_model_dto_instance.to_dict()
# create an instance of EntityTypePagedResponseModelDTO from a dict
entity_type_paged_response_model_dto_from_dict = EntityTypePagedResponseModelDTO.from_dict(entity_type_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


