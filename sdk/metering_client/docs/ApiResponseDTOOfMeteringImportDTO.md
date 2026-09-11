# ApiResponseDTOOfMeteringImportDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**MeteringImportDTO**](MeteringImportDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from metering_client.models.api_response_dtoof_metering_import_dto import ApiResponseDTOOfMeteringImportDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfMeteringImportDTO from a JSON string
api_response_dtoof_metering_import_dto_instance = ApiResponseDTOOfMeteringImportDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfMeteringImportDTO.to_json())

# convert the object into a dict
api_response_dtoof_metering_import_dto_dict = api_response_dtoof_metering_import_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfMeteringImportDTO from a dict
api_response_dtoof_metering_import_dto_from_dict = ApiResponseDTOOfMeteringImportDTO.from_dict(api_response_dtoof_metering_import_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
