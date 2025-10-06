# PortalSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**tenant_id** | **str** |  | [optional] 
**primary_color** | **str** |  | [optional] 
**secondary_color** | **str** |  | [optional] 
**fav_icon** | **str** |  | [optional] 
**logo** | **str** |  | [optional] 
**contact** | [**PortalOrganisationContactSettingsDTO**](PortalOrganisationContactSettingsDTO.md) |  | [optional] 
**portal_public_urls** | **List[str]** |  | [optional] 
**billing_settings** | [**PortalBillingSettingsDTO**](PortalBillingSettingsDTO.md) |  | [optional] 
**advance_change_limit** | [**PortalAdvanceChangeLimitDTO**](PortalAdvanceChangeLimitDTO.md) |  | [optional] 
**is_enabled** | **bool** |  | [optional] 
**page_notifications** | [**List[PortalPageNotificationDTO]**](PortalPageNotificationDTO.md) |  | [optional] 

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


