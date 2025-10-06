# DownloadEntityAttachmentsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_attachment_ids** | **List[str]** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**culture** | [**CultureInfo**](CultureInfo.md) |  | [optional] 

## Example

```python
from attachments_client.models.download_entity_attachments_request import DownloadEntityAttachmentsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DownloadEntityAttachmentsRequest from a JSON string
download_entity_attachments_request_instance = DownloadEntityAttachmentsRequest.from_json(json)
# print the JSON string representation of the object
print(DownloadEntityAttachmentsRequest.to_json())

# convert the object into a dict
download_entity_attachments_request_dict = download_entity_attachments_request_instance.to_dict()
# create an instance of DownloadEntityAttachmentsRequest from a dict
download_entity_attachments_request_from_dict = DownloadEntityAttachmentsRequest.from_dict(download_entity_attachments_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


