# UpdateDataExportFileFormatRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**settings** | **object** |  | [optional] 

## Example

```python
from configuration_client.models.update_data_export_file_format_request import UpdateDataExportFileFormatRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateDataExportFileFormatRequest from a JSON string
update_data_export_file_format_request_instance = UpdateDataExportFileFormatRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateDataExportFileFormatRequest.to_json())

# convert the object into a dict
update_data_export_file_format_request_dict = update_data_export_file_format_request_instance.to_dict()
# create an instance of UpdateDataExportFileFormatRequest from a dict
update_data_export_file_format_request_from_dict = UpdateDataExportFileFormatRequest.from_dict(update_data_export_file_format_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


