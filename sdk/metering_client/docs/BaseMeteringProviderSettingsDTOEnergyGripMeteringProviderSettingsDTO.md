# BaseMeteringProviderSettingsDTOEnergyGripMeteringProviderSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**username** | **str** |  | 
**password** | **str** |  | 
**environment** | [**EnergyGripEnvironment**](EnergyGripEnvironment.md) |  | 

## Example

```python
from metering_client.models.base_metering_provider_settings_dto_energy_grip_metering_provider_settings_dto import BaseMeteringProviderSettingsDTOEnergyGripMeteringProviderSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringProviderSettingsDTOEnergyGripMeteringProviderSettingsDTO from a JSON string
base_metering_provider_settings_dto_energy_grip_metering_provider_settings_dto_instance = BaseMeteringProviderSettingsDTOEnergyGripMeteringProviderSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringProviderSettingsDTOEnergyGripMeteringProviderSettingsDTO.to_json())

# convert the object into a dict
base_metering_provider_settings_dto_energy_grip_metering_provider_settings_dto_dict = base_metering_provider_settings_dto_energy_grip_metering_provider_settings_dto_instance.to_dict()
# create an instance of BaseMeteringProviderSettingsDTOEnergyGripMeteringProviderSettingsDTO from a dict
base_metering_provider_settings_dto_energy_grip_metering_provider_settings_dto_from_dict = BaseMeteringProviderSettingsDTOEnergyGripMeteringProviderSettingsDTO.from_dict(base_metering_provider_settings_dto_energy_grip_metering_provider_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


