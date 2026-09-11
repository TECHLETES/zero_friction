# DataExportFileFormatDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**description** | **str** |  | [optional]
**deleted** | **bool** |  | [optional]
**settings** | [**BaseDataExportSettingsDTOInvoiceExportSettingsDTO**](BaseDataExportSettingsDTOInvoiceExportSettingsDTO.md) |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.data_export_file_format_dto import DataExportFileFormatDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DataExportFileFormatDTO from a JSON string
data_export_file_format_dto_instance = DataExportFileFormatDTO.from_json(json)
# print the JSON string representation of the object
print(DataExportFileFormatDTO.to_json())

# convert the object into a dict
data_export_file_format_dto_dict = data_export_file_format_dto_instance.to_dict()
# create an instance of DataExportFileFormatDTO from a dict
data_export_file_format_dto_from_dict = DataExportFileFormatDTO.from_dict(data_export_file_format_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
