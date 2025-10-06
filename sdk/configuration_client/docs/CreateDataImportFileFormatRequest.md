# CreateDataImportFileFormatRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**settings** | **object** |  | [optional] 

## Example

```python
from configuration_client.models.create_data_import_file_format_request import CreateDataImportFileFormatRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateDataImportFileFormatRequest from a JSON string
create_data_import_file_format_request_instance = CreateDataImportFileFormatRequest.from_json(json)
# print the JSON string representation of the object
print(CreateDataImportFileFormatRequest.to_json())

# convert the object into a dict
create_data_import_file_format_request_dict = create_data_import_file_format_request_instance.to_dict()
# create an instance of CreateDataImportFileFormatRequest from a dict
create_data_import_file_format_request_from_dict = CreateDataImportFileFormatRequest.from_dict(create_data_import_file_format_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


