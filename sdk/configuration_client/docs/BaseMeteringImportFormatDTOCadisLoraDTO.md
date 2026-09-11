# BaseMeteringImportFormatDTOCadisLoraDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**number_thousands_seperator** | **str** |  | [optional]
**delimiter** | **str** |  | [default to ';']
**date_time_format** | **str** |  | [default to 'dd/MM/yyyy HH:mm']
**time_zone** | **str** |  | [default to 'W. Europe Standard Time']
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | [optional]
**number_decimal_seperator** | **str** |  | [default to '.']

## Example

```python
from configuration_client.models.base_metering_import_format_dto_cadis_lora_dto import BaseMeteringImportFormatDTOCadisLoraDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringImportFormatDTOCadisLoraDTO from a JSON string
base_metering_import_format_dto_cadis_lora_dto_instance = BaseMeteringImportFormatDTOCadisLoraDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringImportFormatDTOCadisLoraDTO.to_json())

# convert the object into a dict
base_metering_import_format_dto_cadis_lora_dto_dict = base_metering_import_format_dto_cadis_lora_dto_instance.to_dict()
# create an instance of BaseMeteringImportFormatDTOCadisLoraDTO from a dict
base_metering_import_format_dto_cadis_lora_dto_from_dict = BaseMeteringImportFormatDTOCadisLoraDTO.from_dict(base_metering_import_format_dto_cadis_lora_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
