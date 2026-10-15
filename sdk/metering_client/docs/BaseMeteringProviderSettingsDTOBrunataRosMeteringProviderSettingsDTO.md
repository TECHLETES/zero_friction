# BaseMeteringProviderSettingsDTOBrunataRosMeteringProviderSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**authentication_client_id** | **str** |  | 
**authentication_client_secret** | **str** |  | [optional] 
**api_token** | **str** |  | 
**supported_building_numbers** | **List[int]** |  | 

## Example

```python
from metering_client.models.base_metering_provider_settings_dto_brunata_ros_metering_provider_settings_dto import BaseMeteringProviderSettingsDTOBrunataRosMeteringProviderSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringProviderSettingsDTOBrunataRosMeteringProviderSettingsDTO from a JSON string
base_metering_provider_settings_dto_brunata_ros_metering_provider_settings_dto_instance = BaseMeteringProviderSettingsDTOBrunataRosMeteringProviderSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringProviderSettingsDTOBrunataRosMeteringProviderSettingsDTO.to_json())

# convert the object into a dict
base_metering_provider_settings_dto_brunata_ros_metering_provider_settings_dto_dict = base_metering_provider_settings_dto_brunata_ros_metering_provider_settings_dto_instance.to_dict()
# create an instance of BaseMeteringProviderSettingsDTOBrunataRosMeteringProviderSettingsDTO from a dict
base_metering_provider_settings_dto_brunata_ros_metering_provider_settings_dto_from_dict = BaseMeteringProviderSettingsDTOBrunataRosMeteringProviderSettingsDTO.from_dict(base_metering_provider_settings_dto_brunata_ros_metering_provider_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


