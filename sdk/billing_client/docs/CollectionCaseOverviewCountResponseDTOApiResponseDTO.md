# CollectionCaseOverviewCountResponseDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CollectionCaseOverviewCountResponseDTO**](CollectionCaseOverviewCountResponseDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.collection_case_overview_count_response_dto_api_response_dto import CollectionCaseOverviewCountResponseDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionCaseOverviewCountResponseDTOApiResponseDTO from a JSON string
collection_case_overview_count_response_dto_api_response_dto_instance = CollectionCaseOverviewCountResponseDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionCaseOverviewCountResponseDTOApiResponseDTO.to_json())

# convert the object into a dict
collection_case_overview_count_response_dto_api_response_dto_dict = collection_case_overview_count_response_dto_api_response_dto_instance.to_dict()
# create an instance of CollectionCaseOverviewCountResponseDTOApiResponseDTO from a dict
collection_case_overview_count_response_dto_api_response_dto_from_dict = CollectionCaseOverviewCountResponseDTOApiResponseDTO.from_dict(collection_case_overview_count_response_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


