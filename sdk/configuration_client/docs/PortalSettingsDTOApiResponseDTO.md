# PortalSettingsDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PortalSettingsDTO**](PortalSettingsDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.portal_settings_dto_api_response_dto import PortalSettingsDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PortalSettingsDTOApiResponseDTO from a JSON string
portal_settings_dto_api_response_dto_instance = PortalSettingsDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PortalSettingsDTOApiResponseDTO.to_json())

# convert the object into a dict
portal_settings_dto_api_response_dto_dict = portal_settings_dto_api_response_dto_instance.to_dict()
# create an instance of PortalSettingsDTOApiResponseDTO from a dict
portal_settings_dto_api_response_dto_from_dict = PortalSettingsDTOApiResponseDTO.from_dict(portal_settings_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


