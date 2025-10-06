# CollectionCaseDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[CollectionCaseDTO]**](CollectionCaseDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.collection_case_dto_paged_response_model_dto import CollectionCaseDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionCaseDTOPagedResponseModelDTO from a JSON string
collection_case_dto_paged_response_model_dto_instance = CollectionCaseDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionCaseDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
collection_case_dto_paged_response_model_dto_dict = collection_case_dto_paged_response_model_dto_instance.to_dict()
# create an instance of CollectionCaseDTOPagedResponseModelDTO from a dict
collection_case_dto_paged_response_model_dto_from_dict = CollectionCaseDTOPagedResponseModelDTO.from_dict(collection_case_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


