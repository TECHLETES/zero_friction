# ExportMeasurementDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[ExportMeasurementDTO]**](ExportMeasurementDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.export_measurement_dto_list_api_response_dto import ExportMeasurementDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ExportMeasurementDTOListApiResponseDTO from a JSON string
export_measurement_dto_list_api_response_dto_instance = ExportMeasurementDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ExportMeasurementDTOListApiResponseDTO.to_json())

# convert the object into a dict
export_measurement_dto_list_api_response_dto_dict = export_measurement_dto_list_api_response_dto_instance.to_dict()
# create an instance of ExportMeasurementDTOListApiResponseDTO from a dict
export_measurement_dto_list_api_response_dto_from_dict = ExportMeasurementDTOListApiResponseDTO.from_dict(export_measurement_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


