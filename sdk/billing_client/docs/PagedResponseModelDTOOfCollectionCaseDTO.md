# PagedResponseModelDTOOfCollectionCaseDTO


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
from billing_client.models.paged_response_model_dtoof_collection_case_dto import PagedResponseModelDTOOfCollectionCaseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PagedResponseModelDTOOfCollectionCaseDTO from a JSON string
paged_response_model_dtoof_collection_case_dto_instance = PagedResponseModelDTOOfCollectionCaseDTO.from_json(json)
# print the JSON string representation of the object
print(PagedResponseModelDTOOfCollectionCaseDTO.to_json())

# convert the object into a dict
paged_response_model_dtoof_collection_case_dto_dict = paged_response_model_dtoof_collection_case_dto_instance.to_dict()
# create an instance of PagedResponseModelDTOOfCollectionCaseDTO from a dict
paged_response_model_dtoof_collection_case_dto_from_dict = PagedResponseModelDTOOfCollectionCaseDTO.from_dict(paged_response_model_dtoof_collection_case_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
