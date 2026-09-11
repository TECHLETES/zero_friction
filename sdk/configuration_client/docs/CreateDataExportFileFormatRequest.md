# CreateDataExportFileFormatRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  |
**description** | **str** |  |
**settings** | [**BaseDataExportSettingsDTOInvoiceExportSettingsDTO**](BaseDataExportSettingsDTOInvoiceExportSettingsDTO.md) |  |

## Example

```python
from configuration_client.models.create_data_export_file_format_request import CreateDataExportFileFormatRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateDataExportFileFormatRequest from a JSON string
create_data_export_file_format_request_instance = CreateDataExportFileFormatRequest.from_json(json)
# print the JSON string representation of the object
print(CreateDataExportFileFormatRequest.to_json())

# convert the object into a dict
create_data_export_file_format_request_dict = create_data_export_file_format_request_instance.to_dict()
# create an instance of CreateDataExportFileFormatRequest from a dict
create_data_export_file_format_request_from_dict = CreateDataExportFileFormatRequest.from_dict(create_data_export_file_format_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
