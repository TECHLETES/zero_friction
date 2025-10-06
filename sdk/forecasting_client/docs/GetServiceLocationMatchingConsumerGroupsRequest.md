# GetServiceLocationMatchingConsumerGroupsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**property_group_id** | **str** |  | [optional] 
**product_id** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 

## Example

```python
from forecasting_client.models.get_service_location_matching_consumer_groups_request import GetServiceLocationMatchingConsumerGroupsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetServiceLocationMatchingConsumerGroupsRequest from a JSON string
get_service_location_matching_consumer_groups_request_instance = GetServiceLocationMatchingConsumerGroupsRequest.from_json(json)
# print the JSON string representation of the object
print(GetServiceLocationMatchingConsumerGroupsRequest.to_json())

# convert the object into a dict
get_service_location_matching_consumer_groups_request_dict = get_service_location_matching_consumer_groups_request_instance.to_dict()
# create an instance of GetServiceLocationMatchingConsumerGroupsRequest from a dict
get_service_location_matching_consumer_groups_request_from_dict = GetServiceLocationMatchingConsumerGroupsRequest.from_dict(get_service_location_matching_consumer_groups_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


