# MeteringImportDataFileFormatDto


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**delimiter** | **str** |  | [optional]
**date_time_format** | **str** |  | [optional]
**time_zone** | **str** |  | [optional]
**decimal_separator** | **str** |  | [optional]
**thousands_separator** | **str** |  | [optional]
**culture** | **str** |  | [optional]
**first_line_is_header** | **bool** |  | [optional]

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
