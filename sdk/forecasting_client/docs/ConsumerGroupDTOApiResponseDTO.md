# ConsumerGroupDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ConsumerGroupDTO**](ConsumerGroupDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from forecasting_client.models.consumer_group_dto_api_response_dto import ConsumerGroupDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumerGroupDTOApiResponseDTO from a JSON string
consumer_group_dto_api_response_dto_instance = ConsumerGroupDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumerGroupDTOApiResponseDTO.to_json())

# convert the object into a dict
consumer_group_dto_api_response_dto_dict = consumer_group_dto_api_response_dto_instance.to_dict()
# create an instance of ConsumerGroupDTOApiResponseDTO from a dict
consumer_group_dto_api_response_dto_from_dict = ConsumerGroupDTOApiResponseDTO.from_dict(consumer_group_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


