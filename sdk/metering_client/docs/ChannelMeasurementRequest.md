# ChannelMeasurementRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**direction** | [**Direction**](Direction.md) |  | [optional] 
**meter_serial_number** | **str** |  | 
**external_channel_identifier** | **str** |  | [optional] 
**measurements** | [**List[MeasurementRequest]**](MeasurementRequest.md) |  | 

## Example

```python
from metering_client.models.channel_measurement_request import ChannelMeasurementRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChannelMeasurementRequest from a JSON string
channel_measurement_request_instance = ChannelMeasurementRequest.from_json(json)
# print the JSON string representation of the object
print(ChannelMeasurementRequest.to_json())

# convert the object into a dict
channel_measurement_request_dict = channel_measurement_request_instance.to_dict()
# create an instance of ChannelMeasurementRequest from a dict
channel_measurement_request_from_dict = ChannelMeasurementRequest.from_dict(channel_measurement_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


