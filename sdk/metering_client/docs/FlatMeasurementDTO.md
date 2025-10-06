# FlatMeasurementDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_channel_identifier** | **str** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from metering_client.models.flat_measurement_dto import FlatMeasurementDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FlatMeasurementDTO from a JSON string
flat_measurement_dto_instance = FlatMeasurementDTO.from_json(json)
# print the JSON string representation of the object
print(FlatMeasurementDTO.to_json())

# convert the object into a dict
flat_measurement_dto_dict = flat_measurement_dto_instance.to_dict()
# create an instance of FlatMeasurementDTO from a dict
flat_measurement_dto_from_dict = FlatMeasurementDTO.from_dict(flat_measurement_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


