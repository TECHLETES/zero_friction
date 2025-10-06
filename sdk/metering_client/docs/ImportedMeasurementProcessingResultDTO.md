# ImportedMeasurementProcessingResultDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_serial_number** | **str** |  | [optional] 
**external_channel_identifier** | **str** |  | [optional] 
**external_reference** | **str** |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**direction** | [**Direction**](Direction.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**reading_date_time** | **datetime** |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**reading_value** | **float** |  | [optional] 
**error_code** | **str** |  | [optional] 
**line_number** | **int** |  | [optional] 
**processed_on** | **datetime** |  | [optional] 
**was_ignored** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.imported_measurement_processing_result_dto import ImportedMeasurementProcessingResultDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ImportedMeasurementProcessingResultDTO from a JSON string
imported_measurement_processing_result_dto_instance = ImportedMeasurementProcessingResultDTO.from_json(json)
# print the JSON string representation of the object
print(ImportedMeasurementProcessingResultDTO.to_json())

# convert the object into a dict
imported_measurement_processing_result_dto_dict = imported_measurement_processing_result_dto_instance.to_dict()
# create an instance of ImportedMeasurementProcessingResultDTO from a dict
imported_measurement_processing_result_dto_from_dict = ImportedMeasurementProcessingResultDTO.from_dict(imported_measurement_processing_result_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


