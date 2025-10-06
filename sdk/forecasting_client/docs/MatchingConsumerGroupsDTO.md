# MatchingConsumerGroupsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**suggestion** | [**ConsumerGroupSuggestion**](ConsumerGroupSuggestion.md) |  | [optional] 
**consumer_group** | [**ConsumerGroupDTO**](ConsumerGroupDTO.md) |  | [optional] 

## Example

```python
from forecasting_client.models.matching_consumer_groups_dto import MatchingConsumerGroupsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MatchingConsumerGroupsDTO from a JSON string
matching_consumer_groups_dto_instance = MatchingConsumerGroupsDTO.from_json(json)
# print the JSON string representation of the object
print(MatchingConsumerGroupsDTO.to_json())

# convert the object into a dict
matching_consumer_groups_dto_dict = matching_consumer_groups_dto_instance.to_dict()
# create an instance of MatchingConsumerGroupsDTO from a dict
matching_consumer_groups_dto_from_dict = MatchingConsumerGroupsDTO.from_dict(matching_consumer_groups_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


