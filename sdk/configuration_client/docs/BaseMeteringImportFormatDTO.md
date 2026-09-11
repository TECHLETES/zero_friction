# BaseMeteringImportFormatDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**number_thousands_seperator** | **str** |  | [optional] 
**delimiter** | **str** |  | [default to ';']
**date_time_format** | **str** |  | [default to 'dd.MM.yyyy HH:mm']
**time_zone** | **str** |  | 
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | 
**number_decimal_seperator** | **str** |  | [default to '.']
**first_line_is_header** | **bool** |  | [optional] 
**values** | [**List[CustomCsvMeteringValueDTO]**](CustomCsvMeteringValueDTO.md) |  | 
**title_separator** | **str** |  | 
**title_attributes** | [**List[CustomCsvColumnTitleAttributeDTO]**](CustomCsvColumnTitleAttributeDTO.md) |  | 

## Example

```python
from configuration_client.models.base_metering_import_format_dto import BaseMeteringImportFormatDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringImportFormatDTO from a JSON string
base_metering_import_format_dto_instance = BaseMeteringImportFormatDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringImportFormatDTO.to_json())

# convert the object into a dict
base_metering_import_format_dto_dict = base_metering_import_format_dto_instance.to_dict()
# create an instance of BaseMeteringImportFormatDTO from a dict
base_metering_import_format_dto_from_dict = BaseMeteringImportFormatDTO.from_dict(base_metering_import_format_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


