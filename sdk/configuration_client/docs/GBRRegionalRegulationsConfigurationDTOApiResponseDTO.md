# GBRRegionalRegulationsConfigurationDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**GBRRegionalRegulationsConfigurationDTO**](GBRRegionalRegulationsConfigurationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.gbr_regional_regulations_configuration_dto_api_response_dto import GBRRegionalRegulationsConfigurationDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GBRRegionalRegulationsConfigurationDTOApiResponseDTO from a JSON string
gbr_regional_regulations_configuration_dto_api_response_dto_instance = GBRRegionalRegulationsConfigurationDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(GBRRegionalRegulationsConfigurationDTOApiResponseDTO.to_json())

# convert the object into a dict
gbr_regional_regulations_configuration_dto_api_response_dto_dict = gbr_regional_regulations_configuration_dto_api_response_dto_instance.to_dict()
# create an instance of GBRRegionalRegulationsConfigurationDTOApiResponseDTO from a dict
gbr_regional_regulations_configuration_dto_api_response_dto_from_dict = GBRRegionalRegulationsConfigurationDTOApiResponseDTO.from_dict(gbr_regional_regulations_configuration_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


