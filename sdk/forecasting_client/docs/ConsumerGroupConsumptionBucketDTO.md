# ConsumerGroupConsumptionBucketDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from forecasting_client.models.consumer_group_consumption_bucket_dto import ConsumerGroupConsumptionBucketDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumerGroupConsumptionBucketDTO from a JSON string
consumer_group_consumption_bucket_dto_instance = ConsumerGroupConsumptionBucketDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumerGroupConsumptionBucketDTO.to_json())

# convert the object into a dict
consumer_group_consumption_bucket_dto_dict = consumer_group_consumption_bucket_dto_instance.to_dict()
# create an instance of ConsumerGroupConsumptionBucketDTO from a dict
consumer_group_consumption_bucket_dto_from_dict = ConsumerGroupConsumptionBucketDTO.from_dict(consumer_group_consumption_bucket_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


