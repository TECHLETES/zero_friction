# CustomEntityPropertyTypeDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CustomEntityPropertyTypeDTO**](CustomEntityPropertyTypeDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.custom_entity_property_type_dto_api_response_dto import CustomEntityPropertyTypeDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomEntityPropertyTypeDTOApiResponseDTO from a JSON string
custom_entity_property_type_dto_api_response_dto_instance = CustomEntityPropertyTypeDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CustomEntityPropertyTypeDTOApiResponseDTO.to_json())

# convert the object into a dict
custom_entity_property_type_dto_api_response_dto_dict = custom_entity_property_type_dto_api_response_dto_instance.to_dict()
# create an instance of CustomEntityPropertyTypeDTOApiResponseDTO from a dict
custom_entity_property_type_dto_api_response_dto_from_dict = CustomEntityPropertyTypeDTOApiResponseDTO.from_dict(custom_entity_property_type_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


