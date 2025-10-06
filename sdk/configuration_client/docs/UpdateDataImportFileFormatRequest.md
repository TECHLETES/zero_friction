# UpdateDataImportFileFormatRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**is_built_in** | **bool** |  | [optional] 
**settings** | **object** |  | [optional] 

## Example

```python
from configuration_client.models.update_data_import_file_format_request import UpdateDataImportFileFormatRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateDataImportFileFormatRequest from a JSON string
update_data_import_file_format_request_instance = UpdateDataImportFileFormatRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateDataImportFileFormatRequest.to_json())

# convert the object into a dict
update_data_import_file_format_request_dict = update_data_import_file_format_request_instance.to_dict()
# create an instance of UpdateDataImportFileFormatRequest from a dict
update_data_import_file_format_request_from_dict = UpdateDataImportFileFormatRequest.from_dict(update_data_import_file_format_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


