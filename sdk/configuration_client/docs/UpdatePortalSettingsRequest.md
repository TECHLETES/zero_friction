# UpdatePortalSettingsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fav_icon** | **str** |  | [optional] 
**logo** | **str** |  | [optional] 
**pwa_install_icon512** | **str** |  | 
**pwa_install_icon192** | **str** |  | 
**pwa_apple_touch_icon180** | **str** |  | 
**primary_color** | **str** |  | 
**secondary_color** | **str** |  | 
**persist_logo_from_organization** | **bool** |  | [optional] 
**persist_color_from_organization** | **bool** |  | [optional] 
**show_vko** | **bool** |  | [optional] 
**pwa_enabled** | **bool** |  | [optional] 
**advance_change_limit** | [**PortalAdvanceChangeLimitRequest**](PortalAdvanceChangeLimitRequest.md) |  | 
**billing_settings** | [**PortalBillingSettingsRequest**](PortalBillingSettingsRequest.md) |  | 
**move_in_move_out_settings** | [**PortalMoveInMoveOutSettingsRequest**](PortalMoveInMoveOutSettingsRequest.md) |  | [optional] 
**self_service_options** | [**PortalSelfServiceOptionsRequest**](PortalSelfServiceOptionsRequest.md) |  | 

## Example

```python
from configuration_client.models.update_portal_settings_request import UpdatePortalSettingsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePortalSettingsRequest from a JSON string
update_portal_settings_request_instance = UpdatePortalSettingsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePortalSettingsRequest.to_json())

# convert the object into a dict
update_portal_settings_request_dict = update_portal_settings_request_instance.to_dict()
# create an instance of UpdatePortalSettingsRequest from a dict
update_portal_settings_request_from_dict = UpdatePortalSettingsRequest.from_dict(update_portal_settings_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


