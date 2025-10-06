# CreateConsumerGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**estimated_annual_volume** | **float** |  | [optional] 

## Example

```python
from forecasting_client.models.create_consumer_group_request import CreateConsumerGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateConsumerGroupRequest from a JSON string
create_consumer_group_request_instance = CreateConsumerGroupRequest.from_json(json)
# print the JSON string representation of the object
print(CreateConsumerGroupRequest.to_json())

# convert the object into a dict
create_consumer_group_request_dict = create_consumer_group_request_instance.to_dict()
# create an instance of CreateConsumerGroupRequest from a dict
create_consumer_group_request_from_dict = CreateConsumerGroupRequest.from_dict(create_consumer_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


