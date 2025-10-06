# AggregateDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**value** | **float** |  | [optional] 
**value_date** | **datetime** |  | [optional] 

## Example

```python
from configuration_client.models.aggregate_details import AggregateDetails

# TODO update the JSON string below
json = "{}"
# create an instance of AggregateDetails from a JSON string
aggregate_details_instance = AggregateDetails.from_json(json)
# print the JSON string representation of the object
print(AggregateDetails.to_json())

# convert the object into a dict
aggregate_details_dict = aggregate_details_instance.to_dict()
# create an instance of AggregateDetails from a dict
aggregate_details_from_dict = AggregateDetails.from_dict(aggregate_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


