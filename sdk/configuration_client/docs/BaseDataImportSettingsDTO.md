# BaseDataImportSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  |
**format** | [**BaseMigrationFormatDTOZFBulkImportFormatDTO**](BaseMigrationFormatDTOZFBulkImportFormatDTO.md) |  |

## Example

```python
from configuration_client.models.base_data_import_settings_dto import BaseDataImportSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseDataImportSettingsDTO from a JSON string
base_data_import_settings_dto_instance = BaseDataImportSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseDataImportSettingsDTO.to_json())

# convert the object into a dict
base_data_import_settings_dto_dict = base_data_import_settings_dto_instance.to_dict()
# create an instance of BaseDataImportSettingsDTO from a dict
base_data_import_settings_dto_from_dict = BaseDataImportSettingsDTO.from_dict(base_data_import_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
