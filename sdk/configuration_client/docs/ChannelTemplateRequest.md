# ChannelTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_frequency** | [**DataFrequency**](DataFrequency.md) |  |
**metering_type** | [**MeteringType**](MeteringType.md) |  |
**utility_type** | [**UtilityType**](UtilityType.md) |  |
**direction** | [**Direction**](Direction.md) |  |
**incrementation_type** | [**IncrementationType**](IncrementationType.md) |  |
**time_of_use** | **str** |  |
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  |
**description** | **str** |  |
**reset_day** | **int** |  |
**reset_month** | **int** |  |
**reset_hour** | **int** |  |

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
