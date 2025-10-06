# GetServiceLocationMatchingConsumerGroupsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**matching_consumer_groups** | **Dict[str, Optional[List[MatchingConsumerGroupsDTO]]]** |  | [optional] 

## Example

```python
from forecasting_client.models.get_service_location_matching_consumer_groups_dto import GetServiceLocationMatchingConsumerGroupsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GetServiceLocationMatchingConsumerGroupsDTO from a JSON string
get_service_location_matching_consumer_groups_dto_instance = GetServiceLocationMatchingConsumerGroupsDTO.from_json(json)
# print the JSON string representation of the object
print(GetServiceLocationMatchingConsumerGroupsDTO.to_json())

# convert the object into a dict
get_service_location_matching_consumer_groups_dto_dict = get_service_location_matching_consumer_groups_dto_instance.to_dict()
# create an instance of GetServiceLocationMatchingConsumerGroupsDTO from a dict
get_service_location_matching_consumer_groups_dto_from_dict = GetServiceLocationMatchingConsumerGroupsDTO.from_dict(get_service_location_matching_consumer_groups_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


