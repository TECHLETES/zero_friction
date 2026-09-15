# BucketedConsumerGroupConsumptionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | 
**buckets** | [**List[DateRange]**](DateRange.md) |  | 
**utility_type** | [**UtilityType**](UtilityType.md) |  | 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | 

## Example

```python
from forecasting_client.models.bucketed_consumer_group_consumption_request import BucketedConsumerGroupConsumptionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BucketedConsumerGroupConsumptionRequest from a JSON string
bucketed_consumer_group_consumption_request_instance = BucketedConsumerGroupConsumptionRequest.from_json(json)
# print the JSON string representation of the object
print(BucketedConsumerGroupConsumptionRequest.to_json())

# convert the object into a dict
bucketed_consumer_group_consumption_request_dict = bucketed_consumer_group_consumption_request_instance.to_dict()
# create an instance of BucketedConsumerGroupConsumptionRequest from a dict
bucketed_consumer_group_consumption_request_from_dict = BucketedConsumerGroupConsumptionRequest.from_dict(bucketed_consumer_group_consumption_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


