# ChannelMeasurementRequest

Holds the measurements for a specific meter.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**utility_type** | [**UtilityType**](UtilityType.md) | Indicates what kind of utility the measurement is about (electricity, heat, ...).    Recommended to be set when the ZFH.DataTransfer.Metering.DTO.v1.Requests.MeteringImports.ChannelMeasurementRequest.ExternalChannelIdentifier is not set to ensure the correct  channel can be detected. | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) | Indicates the unit of measurement.    Recommended to be set when the ZFH.DataTransfer.Metering.DTO.v1.Requests.MeteringImports.ChannelMeasurementRequest.ExternalChannelIdentifier is not set to ensure the correct  channel can be detected. | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) | Indicates what kind of metering the measurement is about (energy, volume, ...)    Recommended to be set when the ZFH.DataTransfer.Metering.DTO.v1.Requests.MeteringImports.ChannelMeasurementRequest.ExternalChannelIdentifier is not set to ensure the correct  channel can be detected. | [optional] 
**direction** | [**Direction**](Direction.md) | Is the measurement about injection or off take?    Recommended to be set when the ZFH.DataTransfer.Metering.DTO.v1.Requests.MeteringImports.ChannelMeasurementRequest.ExternalChannelIdentifier is not set to ensure the correct  channel can be detected. | [optional] 
**meter_serial_number** | **str** | The serial number of the meter for which the measurements are taken. | [optional] 
**external_channel_identifier** | **str** | The channel identifier for the specified meter within the Zero Friction platform.    If this is not set, it is recommended to configure the following properties to ensure the correct  channel can be detected.  - ZFH.DataTransfer.Metering.DTO.v1.Requests.MeteringImports.ChannelMeasurementRequest.UtilityType  - ZFH.DataTransfer.Metering.DTO.v1.Requests.MeteringImports.ChannelMeasurementRequest.UnitOfMeasure  - ZFH.DataTransfer.Metering.DTO.v1.Requests.MeteringImports.ChannelMeasurementRequest.MeteringType  - ZFH.DataTransfer.Metering.DTO.v1.Requests.MeteringImports.ChannelMeasurementRequest.Direction | [optional] 
**measurements** | [**List[MeasurementRequest]**](MeasurementRequest.md) | The actual measurement values.    The total number of measurements supported across channel measurements in one request is limited to 5000.  If you, for instance, have two channel measurements with more than 2500 measurements per channel, a validation  error will be returned. | [optional] 

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


