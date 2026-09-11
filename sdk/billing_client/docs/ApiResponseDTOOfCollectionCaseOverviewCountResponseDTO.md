# ApiResponseDTOOfCollectionCaseOverviewCountResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**CollectionCaseOverviewCountResponseDTO**](CollectionCaseOverviewCountResponseDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dtoof_collection_case_overview_count_response_dto import ApiResponseDTOOfCollectionCaseOverviewCountResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfCollectionCaseOverviewCountResponseDTO from a JSON string
api_response_dtoof_collection_case_overview_count_response_dto_instance = ApiResponseDTOOfCollectionCaseOverviewCountResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfCollectionCaseOverviewCountResponseDTO.to_json())

# convert the object into a dict
api_response_dtoof_collection_case_overview_count_response_dto_dict = api_response_dtoof_collection_case_overview_count_response_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfCollectionCaseOverviewCountResponseDTO from a dict
api_response_dtoof_collection_case_overview_count_response_dto_from_dict = ApiResponseDTOOfCollectionCaseOverviewCountResponseDTO.from_dict(api_response_dtoof_collection_case_overview_count_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


