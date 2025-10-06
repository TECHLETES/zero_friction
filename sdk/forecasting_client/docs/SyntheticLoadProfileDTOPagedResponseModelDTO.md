# SyntheticLoadProfileDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SyntheticLoadProfileDTO]**](SyntheticLoadProfileDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from forecasting_client.models.synthetic_load_profile_dto_paged_response_model_dto import SyntheticLoadProfileDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SyntheticLoadProfileDTOPagedResponseModelDTO from a JSON string
synthetic_load_profile_dto_paged_response_model_dto_instance = SyntheticLoadProfileDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(SyntheticLoadProfileDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
synthetic_load_profile_dto_paged_response_model_dto_dict = synthetic_load_profile_dto_paged_response_model_dto_instance.to_dict()
# create an instance of SyntheticLoadProfileDTOPagedResponseModelDTO from a dict
synthetic_load_profile_dto_paged_response_model_dto_from_dict = SyntheticLoadProfileDTOPagedResponseModelDTO.from_dict(synthetic_load_profile_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


