# UtilityTypePagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**UtilityTypePagedResponseModelDTO**](UtilityTypePagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from forecasting_client.models.utility_type_paged_response_model_dto_api_response_dto import UtilityTypePagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of UtilityTypePagedResponseModelDTOApiResponseDTO from a JSON string
utility_type_paged_response_model_dto_api_response_dto_instance = UtilityTypePagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(UtilityTypePagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
utility_type_paged_response_model_dto_api_response_dto_dict = utility_type_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of UtilityTypePagedResponseModelDTOApiResponseDTO from a dict
utility_type_paged_response_model_dto_api_response_dto_from_dict = UtilityTypePagedResponseModelDTOApiResponseDTO.from_dict(utility_type_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


