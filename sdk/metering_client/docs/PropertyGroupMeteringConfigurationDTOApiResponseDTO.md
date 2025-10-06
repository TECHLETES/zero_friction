# PropertyGroupMeteringConfigurationDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PropertyGroupMeteringConfigurationDTO**](PropertyGroupMeteringConfigurationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.property_group_metering_configuration_dto_api_response_dto import PropertyGroupMeteringConfigurationDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupMeteringConfigurationDTOApiResponseDTO from a JSON string
property_group_metering_configuration_dto_api_response_dto_instance = PropertyGroupMeteringConfigurationDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupMeteringConfigurationDTOApiResponseDTO.to_json())

# convert the object into a dict
property_group_metering_configuration_dto_api_response_dto_dict = property_group_metering_configuration_dto_api_response_dto_instance.to_dict()
# create an instance of PropertyGroupMeteringConfigurationDTOApiResponseDTO from a dict
property_group_metering_configuration_dto_api_response_dto_from_dict = PropertyGroupMeteringConfigurationDTOApiResponseDTO.from_dict(property_group_metering_configuration_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


