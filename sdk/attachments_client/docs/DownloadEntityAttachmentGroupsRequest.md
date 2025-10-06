# DownloadEntityAttachmentGroupsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_attachment_group_ids** | **List[str]** |  | [optional] 
**culture** | [**CultureInfo**](CultureInfo.md) |  | [optional] 

## Example

```python
from attachments_client.models.download_entity_attachment_groups_request import DownloadEntityAttachmentGroupsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DownloadEntityAttachmentGroupsRequest from a JSON string
download_entity_attachment_groups_request_instance = DownloadEntityAttachmentGroupsRequest.from_json(json)
# print the JSON string representation of the object
print(DownloadEntityAttachmentGroupsRequest.to_json())

# convert the object into a dict
download_entity_attachment_groups_request_dict = download_entity_attachment_groups_request_instance.to_dict()
# create an instance of DownloadEntityAttachmentGroupsRequest from a dict
download_entity_attachment_groups_request_from_dict = DownloadEntityAttachmentGroupsRequest.from_dict(download_entity_attachment_groups_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


