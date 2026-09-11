# AddMeasurementRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  |
**value** | **float** |  | [optional]
**external_channel_identifier** | **str** |  |
**meter_id** | **str** |  |
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
