# ChannelTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_frequency** | [**DataFrequency**](DataFrequency.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**direction** | [**Direction**](Direction.md) |  | [optional] 
**incrementation_type** | [**IncrementationType**](IncrementationType.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.channel_template_request import ChannelTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChannelTemplateRequest from a JSON string
channel_template_request_instance = ChannelTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(ChannelTemplateRequest.to_json())

# convert the object into a dict
channel_template_request_dict = channel_template_request_instance.to_dict()
# create an instance of ChannelTemplateRequest from a dict
channel_template_request_from_dict = ChannelTemplateRequest.from_dict(channel_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


