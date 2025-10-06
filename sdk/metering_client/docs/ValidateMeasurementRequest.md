# ValidateMeasurementRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 
**meter_id** | **str** |  | [optional] 
**external_channel_id** | **str** |  | [optional] 

## Example

```python
from metering_client.models.validate_measurement_request import ValidateMeasurementRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ValidateMeasurementRequest from a JSON string
validate_measurement_request_instance = ValidateMeasurementRequest.from_json(json)
# print the JSON string representation of the object
print(ValidateMeasurementRequest.to_json())

# convert the object into a dict
validate_measurement_request_dict = validate_measurement_request_instance.to_dict()
# create an instance of ValidateMeasurementRequest from a dict
validate_measurement_request_from_dict = ValidateMeasurementRequest.from_dict(validate_measurement_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


