# UpdatePropertyGroupForecastingConfigConsumerGroupsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**consumer_groups** | **Dict[str, Optional[str]]** |  | [optional] 

## Example

```python
from forecasting_client.models.update_property_group_forecasting_config_consumer_groups_request import UpdatePropertyGroupForecastingConfigConsumerGroupsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePropertyGroupForecastingConfigConsumerGroupsRequest from a JSON string
update_property_group_forecasting_config_consumer_groups_request_instance = UpdatePropertyGroupForecastingConfigConsumerGroupsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePropertyGroupForecastingConfigConsumerGroupsRequest.to_json())

# convert the object into a dict
update_property_group_forecasting_config_consumer_groups_request_dict = update_property_group_forecasting_config_consumer_groups_request_instance.to_dict()
# create an instance of UpdatePropertyGroupForecastingConfigConsumerGroupsRequest from a dict
update_property_group_forecasting_config_consumer_groups_request_from_dict = UpdatePropertyGroupForecastingConfigConsumerGroupsRequest.from_dict(update_property_group_forecasting_config_consumer_groups_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


