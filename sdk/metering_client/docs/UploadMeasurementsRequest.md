# UploadMeasurementsRequest

Request data to upload measurements for specific meters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic_processing** | **bool** | Indicates if we should process the measurement automatically after validation has succeeded.  By default, this value is set to &lt;value&gt;true&lt;/value&gt;. | [optional] 
**source** | **str** | Free text field to mark the source of the measurements. | [optional] 
**upload_identifier** | **str** | Optional field which allows you to configure an identifier for the upload of measurements. | [optional] 
**channel_measurements** | [**List[ChannelMeasurementRequest]**](ChannelMeasurementRequest.md) | Should contain the list of measurements for a specific channel. | [optional] 

## Example

```python
from metering_client.models.upload_measurements_request import UploadMeasurementsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UploadMeasurementsRequest from a JSON string
upload_measurements_request_instance = UploadMeasurementsRequest.from_json(json)
# print the JSON string representation of the object
print(UploadMeasurementsRequest.to_json())

# convert the object into a dict
upload_measurements_request_dict = upload_measurements_request_instance.to_dict()
# create an instance of UploadMeasurementsRequest from a dict
upload_measurements_request_from_dict = UploadMeasurementsRequest.from_dict(upload_measurements_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


