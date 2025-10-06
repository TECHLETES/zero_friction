# ExportMeasurementDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**external_channel_identifier** | **str** |  | [optional] 
**meter_serial_number** | **str** |  | [optional] 
**meter_tag** | **str** |  | [optional] 
**operation_id** | **str** |  | [optional] 
**value** | **float** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**deleted** | **bool** |  | [optional] 
**data_frequency** | [**DataFrequency**](DataFrequency.md) |  | [optional] 
**incrementation_type** | [**IncrementationType**](IncrementationType.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**direction** | [**Direction**](Direction.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**property_group_name** | **str** |  | [optional] 
**property_group_id** | **str** |  | [optional] 

## Example

```python
from metering_client.models.export_measurement_dto import ExportMeasurementDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ExportMeasurementDTO from a JSON string
export_measurement_dto_instance = ExportMeasurementDTO.from_json(json)
# print the JSON string representation of the object
print(ExportMeasurementDTO.to_json())

# convert the object into a dict
export_measurement_dto_dict = export_measurement_dto_instance.to_dict()
# create an instance of ExportMeasurementDTO from a dict
export_measurement_dto_from_dict = ExportMeasurementDTO.from_dict(export_measurement_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


