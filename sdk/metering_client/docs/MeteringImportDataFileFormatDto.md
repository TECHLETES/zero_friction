# MeteringImportDataFileFormatDto

Stores the configuration values of the custom file format that was applied during processing.  This snapshot ensures that historical format settings are preserved, even if the format configuration changes later.                This is particularly useful for audit trails.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The name of the custom file format. | [optional] 
**delimiter** | **str** | The delimiter to parse the measurements file. | [optional] 
**date_time_format** | **str** | The date time format used during processing. | [optional] 
**time_zone** | **str** | The timezone used during processing. | [optional] 
**decimal_separator** | **str** | The decimal separator used during processing. | [optional] 
**thousands_separator** | **str** | The thousands separator used during processing. | [optional] 
**culture** | **str** | The culture used during processing for number formatting. | [optional] 
**first_line_is_header** | **bool** | Used for custom CSV formats which indicates if the first line was a header or not. | [optional] 

## Example

```python
from metering_client.models.metering_import_data_file_format_dto import MeteringImportDataFileFormatDto

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportDataFileFormatDto from a JSON string
metering_import_data_file_format_dto_instance = MeteringImportDataFileFormatDto.from_json(json)
# print the JSON string representation of the object
print(MeteringImportDataFileFormatDto.to_json())

# convert the object into a dict
metering_import_data_file_format_dto_dict = metering_import_data_file_format_dto_instance.to_dict()
# create an instance of MeteringImportDataFileFormatDto from a dict
metering_import_data_file_format_dto_from_dict = MeteringImportDataFileFormatDto.from_dict(metering_import_data_file_format_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


