# AfasSettingsDetailsDto


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**afas_id** | **str** |  | [optional]
**environment** | [**AfasEnvironment**](AfasEnvironment.md) |  | [optional]
**cost_center_axis_code** | **int** |  | [optional]
**cost_carrier_axis_code** | **int** |  | [optional]
**pf_id** | **str** |  | [optional]
**pa_cd** | **str** |  | [optional]
**use_voucher_duplicate_check** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.afas_settings_details_dto import AfasSettingsDetailsDto

# TODO update the JSON string below
json = "{}"
# create an instance of AfasSettingsDetailsDto from a JSON string
afas_settings_details_dto_instance = AfasSettingsDetailsDto.from_json(json)
# print the JSON string representation of the object
print(AfasSettingsDetailsDto.to_json())

# convert the object into a dict
afas_settings_details_dto_dict = afas_settings_details_dto_instance.to_dict()
# create an instance of AfasSettingsDetailsDto from a dict
afas_settings_details_dto_from_dict = AfasSettingsDetailsDto.from_dict(afas_settings_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
