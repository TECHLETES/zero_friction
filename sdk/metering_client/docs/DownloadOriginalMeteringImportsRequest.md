# DownloadOriginalMeteringImportsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_query_params** | [**GetMeteringImportsQueryParams**](GetMeteringImportsQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from metering_client.models.download_original_metering_imports_request import DownloadOriginalMeteringImportsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DownloadOriginalMeteringImportsRequest from a JSON string
download_original_metering_imports_request_instance = DownloadOriginalMeteringImportsRequest.from_json(json)
# print the JSON string representation of the object
print(DownloadOriginalMeteringImportsRequest.to_json())

# convert the object into a dict
download_original_metering_imports_request_dict = download_original_metering_imports_request_instance.to_dict()
# create an instance of DownloadOriginalMeteringImportsRequest from a dict
download_original_metering_imports_request_from_dict = DownloadOriginalMeteringImportsRequest.from_dict(download_original_metering_imports_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
