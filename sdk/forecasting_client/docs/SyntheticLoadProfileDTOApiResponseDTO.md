# SyntheticLoadProfileDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**SyntheticLoadProfileDTO**](SyntheticLoadProfileDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from forecasting_client.models.synthetic_load_profile_dto_api_response_dto import SyntheticLoadProfileDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SyntheticLoadProfileDTOApiResponseDTO from a JSON string
synthetic_load_profile_dto_api_response_dto_instance = SyntheticLoadProfileDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(SyntheticLoadProfileDTOApiResponseDTO.to_json())

# convert the object into a dict
synthetic_load_profile_dto_api_response_dto_dict = synthetic_load_profile_dto_api_response_dto_instance.to_dict()
# create an instance of SyntheticLoadProfileDTOApiResponseDTO from a dict
synthetic_load_profile_dto_api_response_dto_from_dict = SyntheticLoadProfileDTOApiResponseDTO.from_dict(synthetic_load_profile_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


