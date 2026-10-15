# UpdatePortalCollectionDayPreferencesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_resident_to_choose_collection_day** | **bool** |  | [optional] 
**selectable_collection_days** | **List[int]** |  | [optional] 

## Example

```python
from configuration_client.models.update_portal_collection_day_preferences_request import UpdatePortalCollectionDayPreferencesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePortalCollectionDayPreferencesRequest from a JSON string
update_portal_collection_day_preferences_request_instance = UpdatePortalCollectionDayPreferencesRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePortalCollectionDayPreferencesRequest.to_json())

# convert the object into a dict
update_portal_collection_day_preferences_request_dict = update_portal_collection_day_preferences_request_instance.to_dict()
# create an instance of UpdatePortalCollectionDayPreferencesRequest from a dict
update_portal_collection_day_preferences_request_from_dict = UpdatePortalCollectionDayPreferencesRequest.from_dict(update_portal_collection_day_preferences_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


