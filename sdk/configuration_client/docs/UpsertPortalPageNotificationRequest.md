# UpsertPortalPageNotificationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page_identifier** | [**PortalPageIdentifier**](PortalPageIdentifier.md) |  | [optional] 
**notification_type** | [**PortalNotificationType**](PortalNotificationType.md) |  | [optional] 
**translated_content** | **Dict[str, Optional[str]]** |  | [optional] 

## Example

```python
from configuration_client.models.upsert_portal_page_notification_request import UpsertPortalPageNotificationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpsertPortalPageNotificationRequest from a JSON string
upsert_portal_page_notification_request_instance = UpsertPortalPageNotificationRequest.from_json(json)
# print the JSON string representation of the object
print(UpsertPortalPageNotificationRequest.to_json())

# convert the object into a dict
upsert_portal_page_notification_request_dict = upsert_portal_page_notification_request_instance.to_dict()
# create an instance of UpsertPortalPageNotificationRequest from a dict
upsert_portal_page_notification_request_from_dict = UpsertPortalPageNotificationRequest.from_dict(upsert_portal_page_notification_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


