# BaseMeteringImportFormatDTOSynergirBISGen4DTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**delimiter** | **str** |  | [default to ';']
**date_time_format** | **str** |  | [default to 'dd.MM.yyyy HH:mm']
**time_zone** | **str** |  | 
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | [optional] 
**number_decimal_seperator** | **str** |  | [default to '.']

## Example

```python
from configuration_client.models.base_metering_import_format_dto_synergir_bis_gen4_dto import BaseMeteringImportFormatDTOSynergirBISGen4DTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringImportFormatDTOSynergirBISGen4DTO from a JSON string
base_metering_import_format_dto_synergir_bis_gen4_dto_instance = BaseMeteringImportFormatDTOSynergirBISGen4DTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringImportFormatDTOSynergirBISGen4DTO.to_json())

# convert the object into a dict
base_metering_import_format_dto_synergir_bis_gen4_dto_dict = base_metering_import_format_dto_synergir_bis_gen4_dto_instance.to_dict()
# create an instance of BaseMeteringImportFormatDTOSynergirBISGen4DTO from a dict
base_metering_import_format_dto_synergir_bis_gen4_dto_from_dict = BaseMeteringImportFormatDTOSynergirBISGen4DTO.from_dict(base_metering_import_format_dto_synergir_bis_gen4_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


