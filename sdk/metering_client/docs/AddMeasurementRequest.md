# AddMeasurementRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** | Optional start of the period the value covers. Omit for a point-in-time meter reading; when set it must differ from endDateTime. | [optional] 
**end_date_time** | **datetime** | Moment of the reading (ISO 8601 with offset, e.g. 2026-09-01T00:00:00+02:00). | 
**value** | **float** | The reading, as a JSON number in the channel&#39;s unit of measure (channels[].unitOfMeasure on the meter). | [optional] 
**external_channel_identifier** | **str** | The meter channel to write to: channels[].externalIdentifier from zf_get on masterdata/Meters with the meterId. Not the serial number. | 
**meter_id** | **str** | Id of the meter, not its serial number. Resolve a serial number with zf_search on masterdata/Meters, filters { \&quot;meterSerialNumbers\&quot;: [\&quot;&lt;serial&gt;\&quot;] }. | 
**skip_validation** | **bool** |  | [optional] 
**resolve_issues_manually** | **bool** |  | [optional] 
**reading_origin** | [**MeasurementReadingOrigin**](MeasurementReadingOrigin.md) |  | [optional] 
**reading_method** | [**MeasurementReadingMethod**](MeasurementReadingMethod.md) |  | [optional] 

## Example

```python
from metering_client.models.add_measurement_request import AddMeasurementRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddMeasurementRequest from a JSON string
add_measurement_request_instance = AddMeasurementRequest.from_json(json)
# print the JSON string representation of the object
print(AddMeasurementRequest.to_json())

# convert the object into a dict
add_measurement_request_dict = add_measurement_request_instance.to_dict()
# create an instance of AddMeasurementRequest from a dict
add_measurement_request_from_dict = AddMeasurementRequest.from_dict(add_measurement_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


