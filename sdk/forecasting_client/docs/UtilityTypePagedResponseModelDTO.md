# UtilityTypePagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[UtilityType]**](UtilityType.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from forecasting_client.models.utility_type_paged_response_model_dto import UtilityTypePagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of UtilityTypePagedResponseModelDTO from a JSON string
utility_type_paged_response_model_dto_instance = UtilityTypePagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(UtilityTypePagedResponseModelDTO.to_json())

# convert the object into a dict
utility_type_paged_response_model_dto_dict = utility_type_paged_response_model_dto_instance.to_dict()
# create an instance of UtilityTypePagedResponseModelDTO from a dict
utility_type_paged_response_model_dto_from_dict = UtilityTypePagedResponseModelDTO.from_dict(utility_type_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


