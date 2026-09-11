# BaseMeteringImportFormatDTOCustomCsvColumnMeteringImportFormatDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**delimiter** | **str** |  | [default to ',']
**date_time_format** | **str** |  |
**time_zone** | **str** |  |
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | [optional]
**number_thousands_seperator** | **str** |  | [optional]
**number_decimal_seperator** | **str** |  |
**title_separator** | **str** |  |
**title_attributes** | [**List[CustomCsvColumnTitleAttributeDTO]**](CustomCsvColumnTitleAttributeDTO.md) |  |

## Example

```python
from configuration_client.models.base_metering_import_format_dto_custom_csv_column_metering_import_format_dto import BaseMeteringImportFormatDTOCustomCsvColumnMeteringImportFormatDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringImportFormatDTOCustomCsvColumnMeteringImportFormatDTO from a JSON string
base_metering_import_format_dto_custom_csv_column_metering_import_format_dto_instance = BaseMeteringImportFormatDTOCustomCsvColumnMeteringImportFormatDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringImportFormatDTOCustomCsvColumnMeteringImportFormatDTO.to_json())

# convert the object into a dict
base_metering_import_format_dto_custom_csv_column_metering_import_format_dto_dict = base_metering_import_format_dto_custom_csv_column_metering_import_format_dto_instance.to_dict()
# create an instance of BaseMeteringImportFormatDTOCustomCsvColumnMeteringImportFormatDTO from a dict
base_metering_import_format_dto_custom_csv_column_metering_import_format_dto_from_dict = BaseMeteringImportFormatDTOCustomCsvColumnMeteringImportFormatDTO.from_dict(base_metering_import_format_dto_custom_csv_column_metering_import_format_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
