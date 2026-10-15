# UpdateEntityAttachmentSignedDateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | 
**signed_date_time** | **datetime** |  | 
**signed_culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | 
**signed_localised_file_name** | **str** |  | 

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


