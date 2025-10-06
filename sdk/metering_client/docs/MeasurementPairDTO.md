# MeasurementPairDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_channel_id** | **str** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**previous_measurements** | [**List[MeasurementDTO]**](MeasurementDTO.md) |  | [optional] 
**next_measurements** | [**List[MeasurementDTO]**](MeasurementDTO.md) |  | [optional] 
**previous_measurement** | [**MeasurementDTO**](MeasurementDTO.md) | Represents a measurement reading from a meter with associated metadata | [optional] 
**next_measurement** | [**MeasurementDTO**](MeasurementDTO.md) | Represents a measurement reading from a meter with associated metadata | [optional] 

## Example

```python
from metering_client.models.measurement_pair_dto import MeasurementPairDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeasurementPairDTO from a JSON string
measurement_pair_dto_instance = MeasurementPairDTO.from_json(json)
# print the JSON string representation of the object
print(MeasurementPairDTO.to_json())

# convert the object into a dict
measurement_pair_dto_dict = measurement_pair_dto_instance.to_dict()
# create an instance of MeasurementPairDTO from a dict
measurement_pair_dto_from_dict = MeasurementPairDTO.from_dict(measurement_pair_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


