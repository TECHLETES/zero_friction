# ConsumerGroupReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 

## Example

```python
from forecasting_client.models.consumer_group_reference import ConsumerGroupReference

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumerGroupReference from a JSON string
consumer_group_reference_instance = ConsumerGroupReference.from_json(json)
# print the JSON string representation of the object
print(ConsumerGroupReference.to_json())

# convert the object into a dict
consumer_group_reference_dict = consumer_group_reference_instance.to_dict()
# create an instance of ConsumerGroupReference from a dict
consumer_group_reference_from_dict = ConsumerGroupReference.from_dict(consumer_group_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


