# CreateMeterRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serial_number** | **str** |  | [optional] 
**meter_type** | [**MeterType**](MeterType.md) |  | [optional] 
**meter_tag** | **str** |  | [optional] 
**model_id** | **str** |  | [optional] 
**mutation_date_time** | **datetime** |  | [optional] 
**channels** | [**List[ExternalChannelRequest]**](ExternalChannelRequest.md) |  | [optional] 
**reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional] 
**next_expected_reading_date** | **datetime** |  | [optional] 
**properties** | **object** |  | [optional] 
**parent_relation** | [**CreateMeterParentRelationRequest**](CreateMeterParentRelationRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.create_meter_request import CreateMeterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateMeterRequest from a JSON string
create_meter_request_instance = CreateMeterRequest.from_json(json)
# print the JSON string representation of the object
print(CreateMeterRequest.to_json())

# convert the object into a dict
create_meter_request_dict = create_meter_request_instance.to_dict()
# create an instance of CreateMeterRequest from a dict
create_meter_request_from_dict = CreateMeterRequest.from_dict(create_meter_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


