# CollectionCaseOverviewCountResponseDTO

Represents a summary of collection case counts for different statuses.  This DTO provides an overview of collection cases based on their current state.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** | The total number of collection cases. | [optional] 
**active** | **int** | The number of currently active collection cases. | [optional] 
**closed** | **int** | The number of closed collection cases. | [optional] 
**requires_manual_intervention** | **int** | The number of collection cases that require manual intervention. | [optional] 
**require_attention** | **int** | The number of collection cases that require immediate attention. | [optional] 

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


