# PortalSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tenant_id** | **str** |  | [optional] 
**primary_color** | **str** |  | [optional] 
**secondary_color** | **str** |  | [optional] 
**fav_icon** | **str** |  | [optional] 
**logo** | **str** |  | [optional] 
**pwa_install_icon192_cdn_url** | **str** |  | [optional] 
**pwa_install_icon512_cdn_url** | **str** |  | [optional] 
**pwa_apple_touch_icon180_cdn_url** | **str** |  | [optional] 
**persist_logo_from_organization** | **bool** |  | [optional] 
**persist_color_from_organization** | **bool** |  | [optional] 
**contact** | [**PortalOrganisationContactSettingsDTO**](PortalOrganisationContactSettingsDTO.md) |  | [optional] 
**portal_public_urls** | **List[str]** |  | [optional] 
**portal_host_names** | [**List[PortalHostNameSettingsDTO]**](PortalHostNameSettingsDTO.md) |  | [optional] 
**billing_settings** | [**PortalBillingSettingsDTO**](PortalBillingSettingsDTO.md) |  | [optional] 
**move_in_move_out_settings** | [**PortalMoveInMoveOutSettingsDTO**](PortalMoveInMoveOutSettingsDTO.md) |  | [optional] 
**self_service_options** | [**PortalSelfServiceOptionsDTO**](PortalSelfServiceOptionsDTO.md) |  | [optional] 
**advance_change_limit** | [**PortalAdvanceChangeLimitDTO**](PortalAdvanceChangeLimitDTO.md) |  | [optional] 
**show_vko** | **bool** |  | [optional] 
**is_enabled** | **bool** |  | [optional] 
**page_notifications** | [**List[PortalPageNotificationDTO]**](PortalPageNotificationDTO.md) |  | [optional] 
**pwa_enabled** | **bool** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.portal_settings_dto import PortalSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PortalSettingsDTO from a JSON string
portal_settings_dto_instance = PortalSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(PortalSettingsDTO.to_json())

# convert the object into a dict
portal_settings_dto_dict = portal_settings_dto_instance.to_dict()
# create an instance of PortalSettingsDTO from a dict
portal_settings_dto_from_dict = PortalSettingsDTO.from_dict(portal_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


