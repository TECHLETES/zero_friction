# BaseDataImportSettingsDTOMigrationSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**format** | [**BaseMigrationFormatDTOZFBulkImportFormatDTO**](BaseMigrationFormatDTOZFBulkImportFormatDTO.md) |  |

## Example

```python
from configuration_client.models.base_data_import_settings_dto_migration_settings_dto import BaseDataImportSettingsDTOMigrationSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseDataImportSettingsDTOMigrationSettingsDTO from a JSON string
base_data_import_settings_dto_migration_settings_dto_instance = BaseDataImportSettingsDTOMigrationSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseDataImportSettingsDTOMigrationSettingsDTO.to_json())

# convert the object into a dict
base_data_import_settings_dto_migration_settings_dto_dict = base_data_import_settings_dto_migration_settings_dto_instance.to_dict()
# create an instance of BaseDataImportSettingsDTOMigrationSettingsDTO from a dict
base_data_import_settings_dto_migration_settings_dto_from_dict = BaseDataImportSettingsDTOMigrationSettingsDTO.from_dict(base_data_import_settings_dto_migration_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
