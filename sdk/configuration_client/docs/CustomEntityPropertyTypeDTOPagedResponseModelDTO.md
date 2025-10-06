# CustomEntityPropertyTypeDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CustomEntityPropertyTypeDTO]**](CustomEntityPropertyTypeDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.custom_entity_property_type_dto_paged_response_model_dto import CustomEntityPropertyTypeDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomEntityPropertyTypeDTOPagedResponseModelDTO from a JSON string
custom_entity_property_type_dto_paged_response_model_dto_instance = CustomEntityPropertyTypeDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(CustomEntityPropertyTypeDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
custom_entity_property_type_dto_paged_response_model_dto_dict = custom_entity_property_type_dto_paged_response_model_dto_instance.to_dict()
# create an instance of CustomEntityPropertyTypeDTOPagedResponseModelDTO from a dict
custom_entity_property_type_dto_paged_response_model_dto_from_dict = CustomEntityPropertyTypeDTOPagedResponseModelDTO.from_dict(custom_entity_property_type_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


