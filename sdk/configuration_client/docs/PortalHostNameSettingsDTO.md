# PortalHostNameSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain_name** | **str** |  | [optional]
**is_active** | **bool** |  | [optional]
**c_name_status** | [**PortalHostNameValidationStatus**](PortalHostNameValidationStatus.md) |  | [optional]
**c_name_value** | **str** |  | [optional]
**txt_record_value** | **str** |  | [optional]
**txt_record_status** | [**PortalHostNameValidationStatus**](PortalHostNameValidationStatus.md) |  | [optional]
**txt_record_host_name** | **str** |  | [optional]

## Example

```python
from configuration_client.models.portal_host_name_settings_dto import PortalHostNameSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PortalHostNameSettingsDTO from a JSON string
portal_host_name_settings_dto_instance = PortalHostNameSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(PortalHostNameSettingsDTO.to_json())

# convert the object into a dict
portal_host_name_settings_dto_dict = portal_host_name_settings_dto_instance.to_dict()
# create an instance of PortalHostNameSettingsDTO from a dict
portal_host_name_settings_dto_from_dict = PortalHostNameSettingsDTO.from_dict(portal_host_name_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
