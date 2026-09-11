# BaseMeteringImportFormatDTOYconGoudaDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**delimiter** | **str** |  | [default to ',']
**date_time_format** | **str** |  | [default to 'd-MMM-yy h:mm:ss tt']
**time_zone** | **str** |  | [optional] [default to 'Central European Standard Time']
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) |
**number_decimal_seperator** | **str** |  | [default to '.']

## Example

```python
from configuration_client.models.base_metering_import_format_dto_ycon_gouda_dto import BaseMeteringImportFormatDTOYconGoudaDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringImportFormatDTOYconGoudaDTO from a JSON string
base_metering_import_format_dto_ycon_gouda_dto_instance = BaseMeteringImportFormatDTOYconGoudaDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringImportFormatDTOYconGoudaDTO.to_json())

# convert the object into a dict
base_metering_import_format_dto_ycon_gouda_dto_dict = base_metering_import_format_dto_ycon_gouda_dto_instance.to_dict()
# create an instance of BaseMeteringImportFormatDTOYconGoudaDTO from a dict
base_metering_import_format_dto_ycon_gouda_dto_from_dict = BaseMeteringImportFormatDTOYconGoudaDTO.from_dict(base_metering_import_format_dto_ycon_gouda_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
