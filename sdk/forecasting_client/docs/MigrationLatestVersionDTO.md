# MigrationLatestVersionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **str** |  | [optional]
**latest_version** | **int** |  | [optional]

## Example

```python
from forecasting_client.models.migration_latest_version_dto import MigrationLatestVersionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MigrationLatestVersionDTO from a JSON string
migration_latest_version_dto_instance = MigrationLatestVersionDTO.from_json(json)
# print the JSON string representation of the object
print(MigrationLatestVersionDTO.to_json())

# convert the object into a dict
migration_latest_version_dto_dict = migration_latest_version_dto_instance.to_dict()
# create an instance of MigrationLatestVersionDTO from a dict
migration_latest_version_dto_from_dict = MigrationLatestVersionDTO.from_dict(migration_latest_version_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
