# BaseMeteringImportFormatDTOEquinoxSinapsiDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**delimiter** | **str** |  | [default to ';']
**date_time_format** | **str** |  | [default to 'dd/MM/yy HH:mm']
**time_zone** | **str** |  |
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | [optional]
**number_decimal_seperator** | **str** |  | [default to ',']

## Example

```python
from configuration_client.models.base_metering_import_format_dto_equinox_sinapsi_dto import BaseMeteringImportFormatDTOEquinoxSinapsiDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringImportFormatDTOEquinoxSinapsiDTO from a JSON string
base_metering_import_format_dto_equinox_sinapsi_dto_instance = BaseMeteringImportFormatDTOEquinoxSinapsiDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringImportFormatDTOEquinoxSinapsiDTO.to_json())

# convert the object into a dict
base_metering_import_format_dto_equinox_sinapsi_dto_dict = base_metering_import_format_dto_equinox_sinapsi_dto_instance.to_dict()
# create an instance of BaseMeteringImportFormatDTOEquinoxSinapsiDTO from a dict
base_metering_import_format_dto_equinox_sinapsi_dto_from_dict = BaseMeteringImportFormatDTOEquinoxSinapsiDTO.from_dict(base_metering_import_format_dto_equinox_sinapsi_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
