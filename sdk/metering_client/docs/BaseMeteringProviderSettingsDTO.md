# BaseMeteringProviderSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  |
**authentication_client_id** | **str** |  |
**endpoint_url** | **str** |  |
**authentication_client_secret** | **str** |  | [optional]
**supported_building_numbers** | **List[int]** |  |
**api_token** | **str** |  |
**username** | **str** |  |
**password** | **str** |  |
**environment** | [**EnergyGripEnvironment**](EnergyGripEnvironment.md) |  |
**authentication_api_token** | **str** |  | [optional]
**application_id** | **str** |  | [optional]
**application_key** | **str** |  | [optional]
**utility_types** | [**List[UtilityType]**](UtilityType.md) |  | [optional]

## Example

```python
from metering_client.models.base_metering_provider_settings_dto import BaseMeteringProviderSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringProviderSettingsDTO from a JSON string
base_metering_provider_settings_dto_instance = BaseMeteringProviderSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringProviderSettingsDTO.to_json())

# convert the object into a dict
base_metering_provider_settings_dto_dict = base_metering_provider_settings_dto_instance.to_dict()
# create an instance of BaseMeteringProviderSettingsDTO from a dict
base_metering_provider_settings_dto_from_dict = BaseMeteringProviderSettingsDTO.from_dict(base_metering_provider_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
