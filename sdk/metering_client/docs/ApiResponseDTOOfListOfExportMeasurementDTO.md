# ApiResponseDTOOfListOfExportMeasurementDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[ExportMeasurementDTO]**](ExportMeasurementDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from metering_client.models.api_response_dtoof_list_of_export_measurement_dto import ApiResponseDTOOfListOfExportMeasurementDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfListOfExportMeasurementDTO from a JSON string
api_response_dtoof_list_of_export_measurement_dto_instance = ApiResponseDTOOfListOfExportMeasurementDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfListOfExportMeasurementDTO.to_json())

# convert the object into a dict
api_response_dtoof_list_of_export_measurement_dto_dict = api_response_dtoof_list_of_export_measurement_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfListOfExportMeasurementDTO from a dict
api_response_dtoof_list_of_export_measurement_dto_from_dict = ApiResponseDTOOfListOfExportMeasurementDTO.from_dict(api_response_dtoof_list_of_export_measurement_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
