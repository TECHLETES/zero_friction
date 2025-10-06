# PropertyGroupDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[PropertyGroupDTO]**](PropertyGroupDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.property_group_dto_paged_response_model_dto import PropertyGroupDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupDTOPagedResponseModelDTO from a JSON string
property_group_dto_paged_response_model_dto_instance = PropertyGroupDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
property_group_dto_paged_response_model_dto_dict = property_group_dto_paged_response_model_dto_instance.to_dict()
# create an instance of PropertyGroupDTOPagedResponseModelDTO from a dict
property_group_dto_paged_response_model_dto_from_dict = PropertyGroupDTOPagedResponseModelDTO.from_dict(property_group_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


