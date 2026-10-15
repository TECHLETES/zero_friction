# PagedResponseModelDTOOfUtilityType


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
from masterdata_client.models.paged_response_model_dtoof_utility_type import PagedResponseModelDTOOfUtilityType

# TODO update the JSON string below
json = "{}"
# create an instance of PagedResponseModelDTOOfUtilityType from a JSON string
paged_response_model_dtoof_utility_type_instance = PagedResponseModelDTOOfUtilityType.from_json(json)
# print the JSON string representation of the object
print(PagedResponseModelDTOOfUtilityType.to_json())

# convert the object into a dict
paged_response_model_dtoof_utility_type_dict = paged_response_model_dtoof_utility_type_instance.to_dict()
# create an instance of PagedResponseModelDTOOfUtilityType from a dict
paged_response_model_dtoof_utility_type_from_dict = PagedResponseModelDTOOfUtilityType.from_dict(paged_response_model_dtoof_utility_type_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


