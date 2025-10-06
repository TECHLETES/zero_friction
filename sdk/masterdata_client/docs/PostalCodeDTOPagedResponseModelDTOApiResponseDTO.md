# PostalCodeDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PostalCodeDTOPagedResponseModelDTO**](PostalCodeDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from masterdata_client.models.postal_code_dto_paged_response_model_dto_api_response_dto import PostalCodeDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PostalCodeDTOPagedResponseModelDTOApiResponseDTO from a JSON string
postal_code_dto_paged_response_model_dto_api_response_dto_instance = PostalCodeDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PostalCodeDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
postal_code_dto_paged_response_model_dto_api_response_dto_dict = postal_code_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of PostalCodeDTOPagedResponseModelDTOApiResponseDTO from a dict
postal_code_dto_paged_response_model_dto_api_response_dto_from_dict = PostalCodeDTOPagedResponseModelDTOApiResponseDTO.from_dict(postal_code_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


