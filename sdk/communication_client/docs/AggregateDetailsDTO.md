# AggregateDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**translation** | **str** |  | [optional] 
**value** | **float** |  | [optional] 
**value_date** | **datetime** |  | [optional] 

## Example

```python
from communication_client.models.aggregate_details_dto import AggregateDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AggregateDetailsDTO from a JSON string
aggregate_details_dto_instance = AggregateDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(AggregateDetailsDTO.to_json())

# convert the object into a dict
aggregate_details_dto_dict = aggregate_details_dto_instance.to_dict()
# create an instance of AggregateDetailsDTO from a dict
aggregate_details_dto_from_dict = AggregateDetailsDTO.from_dict(aggregate_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


