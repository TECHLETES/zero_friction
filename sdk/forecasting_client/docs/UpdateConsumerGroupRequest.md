# UpdateConsumerGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**description** | **str** |  | [optional] 
**estimated_annual_volume** | **float** |  | [optional] 

## Example

```python
from forecasting_client.models.update_consumer_group_request import UpdateConsumerGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateConsumerGroupRequest from a JSON string
update_consumer_group_request_instance = UpdateConsumerGroupRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateConsumerGroupRequest.to_json())

# convert the object into a dict
update_consumer_group_request_dict = update_consumer_group_request_instance.to_dict()
# create an instance of UpdateConsumerGroupRequest from a dict
update_consumer_group_request_from_dict = UpdateConsumerGroupRequest.from_dict(update_consumer_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


