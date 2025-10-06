# DownloadCommunicationEntriesZipRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**communication_entry_ids** | **List[str]** |  | [optional] 

## Example

```python
from communication_client.models.download_communication_entries_zip_request import DownloadCommunicationEntriesZipRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DownloadCommunicationEntriesZipRequest from a JSON string
download_communication_entries_zip_request_instance = DownloadCommunicationEntriesZipRequest.from_json(json)
# print the JSON string representation of the object
print(DownloadCommunicationEntriesZipRequest.to_json())

# convert the object into a dict
download_communication_entries_zip_request_dict = download_communication_entries_zip_request_instance.to_dict()
# create an instance of DownloadCommunicationEntriesZipRequest from a dict
download_communication_entries_zip_request_from_dict = DownloadCommunicationEntriesZipRequest.from_dict(download_communication_entries_zip_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


