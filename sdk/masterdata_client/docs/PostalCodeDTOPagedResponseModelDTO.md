# PostalCodeDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[PostalCodeDTO]**](PostalCodeDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.postal_code_dto_paged_response_model_dto import PostalCodeDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PostalCodeDTOPagedResponseModelDTO from a JSON string
postal_code_dto_paged_response_model_dto_instance = PostalCodeDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(PostalCodeDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
postal_code_dto_paged_response_model_dto_dict = postal_code_dto_paged_response_model_dto_instance.to_dict()
# create an instance of PostalCodeDTOPagedResponseModelDTO from a dict
postal_code_dto_paged_response_model_dto_from_dict = PostalCodeDTOPagedResponseModelDTO.from_dict(postal_code_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


