# FileContentResult


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_contents** | **bytearray** |  | [optional] 
**content_type** | **str** |  | [optional] 
**file_download_name** | **str** |  | [optional] 
**last_modified** | **datetime** |  | [optional] 
**entity_tag** | [**EntityTagHeaderValue**](EntityTagHeaderValue.md) |  | [optional] 
**enable_range_processing** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.file_content_result import FileContentResult

# TODO update the JSON string below
json = "{}"
# create an instance of FileContentResult from a JSON string
file_content_result_instance = FileContentResult.from_json(json)
# print the JSON string representation of the object
print(FileContentResult.to_json())

# convert the object into a dict
file_content_result_dict = file_content_result_instance.to_dict()
# create an instance of FileContentResult from a dict
file_content_result_from_dict = FileContentResult.from_dict(file_content_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


