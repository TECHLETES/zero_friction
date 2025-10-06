# MeasurementRequest

Contains the value of the actual measurement and when that measurement was read.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reading_date_time** | **datetime** | Date and time when the value of the measurement was read.  If it differs from UTC, the value should include the offset how much it differs from UTC. | [optional] 
**value** | **float** | The measurement value.    When the Enumerations.UnitOfMeasure isn&#39;t specified, the unit of measure of the channel is used which  is set by the ExternalChannelIdentifier on the channel measurement. | [optional] 

## Example

```python
from metering_client.models.measurement_request import MeasurementRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MeasurementRequest from a JSON string
measurement_request_instance = MeasurementRequest.from_json(json)
# print the JSON string representation of the object
print(MeasurementRequest.to_json())

# convert the object into a dict
measurement_request_dict = measurement_request_instance.to_dict()
# create an instance of MeasurementRequest from a dict
measurement_request_from_dict = MeasurementRequest.from_dict(measurement_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


