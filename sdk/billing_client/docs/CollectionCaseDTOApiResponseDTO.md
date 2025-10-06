# CollectionCaseDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CollectionCaseDTO**](CollectionCaseDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionCaseDTOApiResponseDTO from a JSON string
collection_case_dto_api_response_dto_instance = CollectionCaseDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionCaseDTOApiResponseDTO.to_json())

# convert the object into a dict
collection_case_dto_api_response_dto_dict = collection_case_dto_api_response_dto_instance.to_dict()
# create an instance of CollectionCaseDTOApiResponseDTO from a dict
collection_case_dto_api_response_dto_from_dict = CollectionCaseDTOApiResponseDTO.from_dict(collection_case_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


