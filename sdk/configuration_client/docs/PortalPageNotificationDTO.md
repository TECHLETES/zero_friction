# PortalPageNotificationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page_identifier** | [**PortalPageIdentifier**](PortalPageIdentifier.md) |  | [optional] 
**notification_type** | [**PortalNotificationType**](PortalNotificationType.md) |  | [optional] 
**translated_content** | **Dict[str, Optional[str]]** |  | [optional] 

## Example

```python
from configuration_client.models.portal_page_notification_dto import PortalPageNotificationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PortalPageNotificationDTO from a JSON string
portal_page_notification_dto_instance = PortalPageNotificationDTO.from_json(json)
# print the JSON string representation of the object
print(PortalPageNotificationDTO.to_json())

# convert the object into a dict
portal_page_notification_dto_dict = portal_page_notification_dto_instance.to_dict()
# create an instance of PortalPageNotificationDTO from a dict
portal_page_notification_dto_from_dict = PortalPageNotificationDTO.from_dict(portal_page_notification_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


