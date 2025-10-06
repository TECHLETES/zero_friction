# UpdateMeterDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_type** | [**MeterType**](MeterType.md) |  | [optional] 
**next_expected_reading_date** | **datetime** |  | [optional] 
**meter_reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_meter_details_request import UpdateMeterDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMeterDetailsRequest from a JSON string
update_meter_details_request_instance = UpdateMeterDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMeterDetailsRequest.to_json())

# convert the object into a dict
update_meter_details_request_dict = update_meter_details_request_instance.to_dict()
# create an instance of UpdateMeterDetailsRequest from a dict
update_meter_details_request_from_dict = UpdateMeterDetailsRequest.from_dict(update_meter_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


