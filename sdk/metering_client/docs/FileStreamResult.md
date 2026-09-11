# FileStreamResult


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_stream** | **bytearray** |  | [optional]
**content_type** | **str** |  | [optional]
**file_download_name** | **str** |  | [optional]
**last_modified** | **datetime** |  | [optional]
**entity_tag** | [**EntityTagHeaderValue**](EntityTagHeaderValue.md) |  | [optional]
**enable_range_processing** | **bool** |  | [optional]

## Example

```python
from metering_client.models.file_stream_result import FileStreamResult

# TODO update the JSON string below
json = "{}"
# create an instance of FileStreamResult from a JSON string
file_stream_result_instance = FileStreamResult.from_json(json)
# print the JSON string representation of the object
print(FileStreamResult.to_json())

# convert the object into a dict
file_stream_result_dict = file_stream_result_instance.to_dict()
# create an instance of FileStreamResult from a dict
file_stream_result_from_dict = FileStreamResult.from_dict(file_stream_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
