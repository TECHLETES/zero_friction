# CollectionCaseOverviewCountResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**active** | **int** |  | [optional] 
**paused** | **int** |  | [optional] 
**closed** | **int** |  | [optional] 
**requires_manual_intervention** | **int** |  | [optional] 
**require_attention** | **int** |  | [optional] 

## Example

```python
from billing_client.models.collection_case_overview_count_response_dto import CollectionCaseOverviewCountResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionCaseOverviewCountResponseDTO from a JSON string
collection_case_overview_count_response_dto_instance = CollectionCaseOverviewCountResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionCaseOverviewCountResponseDTO.to_json())

# convert the object into a dict
collection_case_overview_count_response_dto_dict = collection_case_overview_count_response_dto_instance.to_dict()
# create an instance of CollectionCaseOverviewCountResponseDTO from a dict
collection_case_overview_count_response_dto_from_dict = CollectionCaseOverviewCountResponseDTO.from_dict(collection_case_overview_count_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


