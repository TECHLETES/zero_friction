# BaseMeteringProviderSettingsDTORensonMeteringProviderSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**username** | **str** |  |
**password** | **str** |  | [optional]
**utility_types** | [**List[UtilityType]**](UtilityType.md) |  | [optional]

## Example

```python
from metering_client.models.base_metering_provider_settings_dto_renson_metering_provider_settings_dto import BaseMeteringProviderSettingsDTORensonMeteringProviderSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringProviderSettingsDTORensonMeteringProviderSettingsDTO from a JSON string
base_metering_provider_settings_dto_renson_metering_provider_settings_dto_instance = BaseMeteringProviderSettingsDTORensonMeteringProviderSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringProviderSettingsDTORensonMeteringProviderSettingsDTO.to_json())

# convert the object into a dict
base_metering_provider_settings_dto_renson_metering_provider_settings_dto_dict = base_metering_provider_settings_dto_renson_metering_provider_settings_dto_instance.to_dict()
# create an instance of BaseMeteringProviderSettingsDTORensonMeteringProviderSettingsDTO from a dict
base_metering_provider_settings_dto_renson_metering_provider_settings_dto_from_dict = BaseMeteringProviderSettingsDTORensonMeteringProviderSettingsDTO.from_dict(base_metering_provider_settings_dto_renson_metering_provider_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
