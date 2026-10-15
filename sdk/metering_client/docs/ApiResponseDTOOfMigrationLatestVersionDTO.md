# ApiResponseDTOOfMigrationLatestVersionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**MigrationLatestVersionDTO**](MigrationLatestVersionDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.api_response_dtoof_migration_latest_version_dto import ApiResponseDTOOfMigrationLatestVersionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfMigrationLatestVersionDTO from a JSON string
api_response_dtoof_migration_latest_version_dto_instance = ApiResponseDTOOfMigrationLatestVersionDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfMigrationLatestVersionDTO.to_json())

# convert the object into a dict
api_response_dtoof_migration_latest_version_dto_dict = api_response_dtoof_migration_latest_version_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfMigrationLatestVersionDTO from a dict
api_response_dtoof_migration_latest_version_dto_from_dict = ApiResponseDTOOfMigrationLatestVersionDTO.from_dict(api_response_dtoof_migration_latest_version_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


