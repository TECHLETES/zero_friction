# UpdateEntityAttachmentSignedDateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**signed_date_time** | **datetime** |  | [optional] 
**signed_culture** | [**CultureInfo**](CultureInfo.md) |  | [optional] 
**signed_localised_file_name** | **str** |  | [optional] 

## Example

```python
from attachments_client.models.update_entity_attachment_signed_date_request import UpdateEntityAttachmentSignedDateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateEntityAttachmentSignedDateRequest from a JSON string
update_entity_attachment_signed_date_request_instance = UpdateEntityAttachmentSignedDateRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateEntityAttachmentSignedDateRequest.to_json())

# convert the object into a dict
update_entity_attachment_signed_date_request_dict = update_entity_attachment_signed_date_request_instance.to_dict()
# create an instance of UpdateEntityAttachmentSignedDateRequest from a dict
update_entity_attachment_signed_date_request_from_dict = UpdateEntityAttachmentSignedDateRequest.from_dict(update_entity_attachment_signed_date_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


