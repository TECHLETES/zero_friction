# ExternalChannelRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_frequency** | [**DataFrequency**](DataFrequency.md) |  | 
**metering_type** | [**MeteringType**](MeteringType.md) |  | 
**utility_type** | [**UtilityType**](UtilityType.md) |  | 
**direction** | [**Direction**](Direction.md) |  | 
**incrementation_type** | [**IncrementationType**](IncrementationType.md) |  | 
**time_of_use** | **str** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | 
**external_identifier** | **str** |  | [optional] 
**description** | **str** |  | 
**relation_external_reference** | **str** |  | [optional] 
**reset_day** | **int** |  | [optional] 
**reset_month** | **int** |  | [optional] 
**reset_hour** | **int** |  | [optional] 

## Example

```python
from masterdata_client.models.external_channel_request import ExternalChannelRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalChannelRequest from a JSON string
external_channel_request_instance = ExternalChannelRequest.from_json(json)
# print the JSON string representation of the object
print(ExternalChannelRequest.to_json())

# convert the object into a dict
external_channel_request_dict = external_channel_request_instance.to_dict()
# create an instance of ExternalChannelRequest from a dict
external_channel_request_from_dict = ExternalChannelRequest.from_dict(external_channel_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


