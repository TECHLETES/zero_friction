# DownloadAttachmentsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment_ids** | **List[str]** |  | [optional] 

## Example

```python
from attachments_client.models.download_attachments_request import DownloadAttachmentsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DownloadAttachmentsRequest from a JSON string
download_attachments_request_instance = DownloadAttachmentsRequest.from_json(json)
# print the JSON string representation of the object
print(DownloadAttachmentsRequest.to_json())

# convert the object into a dict
download_attachments_request_dict = download_attachments_request_instance.to_dict()
# create an instance of DownloadAttachmentsRequest from a dict
download_attachments_request_from_dict = DownloadAttachmentsRequest.from_dict(download_attachments_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


