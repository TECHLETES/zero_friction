# UpdateEntityAttachmentViewedDateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**viewed_date_time** | **datetime** |  | [optional] 

## Example

```python
from attachments_client.models.update_entity_attachment_viewed_date_request import UpdateEntityAttachmentViewedDateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateEntityAttachmentViewedDateRequest from a JSON string
update_entity_attachment_viewed_date_request_instance = UpdateEntityAttachmentViewedDateRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateEntityAttachmentViewedDateRequest.to_json())

# convert the object into a dict
update_entity_attachment_viewed_date_request_dict = update_entity_attachment_viewed_date_request_instance.to_dict()
# create an instance of UpdateEntityAttachmentViewedDateRequest from a dict
update_entity_attachment_viewed_date_request_from_dict = UpdateEntityAttachmentViewedDateRequest.from_dict(update_entity_attachment_viewed_date_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


