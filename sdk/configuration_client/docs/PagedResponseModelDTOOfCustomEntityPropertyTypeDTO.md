# PagedResponseModelDTOOfCustomEntityPropertyTypeDTO


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
from configuration_client.models.paged_response_model_dtoof_custom_entity_property_type_dto import PagedResponseModelDTOOfCustomEntityPropertyTypeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PagedResponseModelDTOOfCustomEntityPropertyTypeDTO from a JSON string
paged_response_model_dtoof_custom_entity_property_type_dto_instance = PagedResponseModelDTOOfCustomEntityPropertyTypeDTO.from_json(json)
# print the JSON string representation of the object
print(PagedResponseModelDTOOfCustomEntityPropertyTypeDTO.to_json())

# convert the object into a dict
paged_response_model_dtoof_custom_entity_property_type_dto_dict = paged_response_model_dtoof_custom_entity_property_type_dto_instance.to_dict()
# create an instance of PagedResponseModelDTOOfCustomEntityPropertyTypeDTO from a dict
paged_response_model_dtoof_custom_entity_property_type_dto_from_dict = PagedResponseModelDTOOfCustomEntityPropertyTypeDTO.from_dict(paged_response_model_dtoof_custom_entity_property_type_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
