# BaseMeteringProviderSettingsDTOBrunataMeteringProviderSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**authentication_client_id** | **str** |  |
**endpoint_url** | **str** |  |
**authentication_client_secret** | **str** |  | [optional]
**supported_building_numbers** | **List[int]** |  |

## Example

```python
from metering_client.models.base_metering_provider_settings_dto_brunata_metering_provider_settings_dto import BaseMeteringProviderSettingsDTOBrunataMeteringProviderSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringProviderSettingsDTOBrunataMeteringProviderSettingsDTO from a JSON string
base_metering_provider_settings_dto_brunata_metering_provider_settings_dto_instance = BaseMeteringProviderSettingsDTOBrunataMeteringProviderSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringProviderSettingsDTOBrunataMeteringProviderSettingsDTO.to_json())

# convert the object into a dict
base_metering_provider_settings_dto_brunata_metering_provider_settings_dto_dict = base_metering_provider_settings_dto_brunata_metering_provider_settings_dto_instance.to_dict()
# create an instance of BaseMeteringProviderSettingsDTOBrunataMeteringProviderSettingsDTO from a dict
base_metering_provider_settings_dto_brunata_metering_provider_settings_dto_from_dict = BaseMeteringProviderSettingsDTOBrunataMeteringProviderSettingsDTO.from_dict(base_metering_provider_settings_dto_brunata_metering_provider_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
