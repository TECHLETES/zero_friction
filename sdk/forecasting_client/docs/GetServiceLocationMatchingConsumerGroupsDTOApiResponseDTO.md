# GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**GetServiceLocationMatchingConsumerGroupsDTO**](GetServiceLocationMatchingConsumerGroupsDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from forecasting_client.models.get_service_location_matching_consumer_groups_dto_api_response_dto import GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO from a JSON string
get_service_location_matching_consumer_groups_dto_api_response_dto_instance = GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO.to_json())

# convert the object into a dict
get_service_location_matching_consumer_groups_dto_api_response_dto_dict = get_service_location_matching_consumer_groups_dto_api_response_dto_instance.to_dict()
# create an instance of GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO from a dict
get_service_location_matching_consumer_groups_dto_api_response_dto_from_dict = GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO.from_dict(get_service_location_matching_consumer_groups_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


