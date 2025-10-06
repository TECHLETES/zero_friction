# MeteringParametersDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**MeteringParametersDTO**](MeteringParametersDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.metering_parameters_dto_api_response_dto import MeteringParametersDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringParametersDTOApiResponseDTO from a JSON string
metering_parameters_dto_api_response_dto_instance = MeteringParametersDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringParametersDTOApiResponseDTO.to_json())

# convert the object into a dict
metering_parameters_dto_api_response_dto_dict = metering_parameters_dto_api_response_dto_instance.to_dict()
# create an instance of MeteringParametersDTOApiResponseDTO from a dict
metering_parameters_dto_api_response_dto_from_dict = MeteringParametersDTOApiResponseDTO.from_dict(metering_parameters_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


