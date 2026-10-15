# BaseDataExportSettingsDTOInvoiceExportSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**format** | [**BaseInvoiceExportFormatDTO**](BaseInvoiceExportFormatDTO.md) |  | 

## Example

```python
from configuration_client.models.base_data_export_settings_dto_invoice_export_settings_dto import BaseDataExportSettingsDTOInvoiceExportSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseDataExportSettingsDTOInvoiceExportSettingsDTO from a JSON string
base_data_export_settings_dto_invoice_export_settings_dto_instance = BaseDataExportSettingsDTOInvoiceExportSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseDataExportSettingsDTOInvoiceExportSettingsDTO.to_json())

# convert the object into a dict
base_data_export_settings_dto_invoice_export_settings_dto_dict = base_data_export_settings_dto_invoice_export_settings_dto_instance.to_dict()
# create an instance of BaseDataExportSettingsDTOInvoiceExportSettingsDTO from a dict
base_data_export_settings_dto_invoice_export_settings_dto_from_dict = BaseDataExportSettingsDTOInvoiceExportSettingsDTO.from_dict(base_data_export_settings_dto_invoice_export_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


