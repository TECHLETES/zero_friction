# ChannelTemplateDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_frequency** | [**DataFrequency**](DataFrequency.md) |  | [optional] 
**incrementation_type** | [**IncrementationType**](IncrementationType.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**direction** | [**Direction**](Direction.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.channel_template_dto import ChannelTemplateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ChannelTemplateDTO from a JSON string
channel_template_dto_instance = ChannelTemplateDTO.from_json(json)
# print the JSON string representation of the object
print(ChannelTemplateDTO.to_json())

# convert the object into a dict
channel_template_dto_dict = channel_template_dto_instance.to_dict()
# create an instance of ChannelTemplateDTO from a dict
channel_template_dto_from_dict = ChannelTemplateDTO.from_dict(channel_template_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


