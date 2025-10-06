# BELRegionalRegulationsConfigurationDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**BELRegionalRegulationsConfigurationDTO**](BELRegionalRegulationsConfigurationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.bel_regional_regulations_configuration_dto_api_response_dto import BELRegionalRegulationsConfigurationDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BELRegionalRegulationsConfigurationDTOApiResponseDTO from a JSON string
bel_regional_regulations_configuration_dto_api_response_dto_instance = BELRegionalRegulationsConfigurationDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(BELRegionalRegulationsConfigurationDTOApiResponseDTO.to_json())

# convert the object into a dict
bel_regional_regulations_configuration_dto_api_response_dto_dict = bel_regional_regulations_configuration_dto_api_response_dto_instance.to_dict()
# create an instance of BELRegionalRegulationsConfigurationDTOApiResponseDTO from a dict
bel_regional_regulations_configuration_dto_api_response_dto_from_dict = BELRegionalRegulationsConfigurationDTOApiResponseDTO.from_dict(bel_regional_regulations_configuration_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


