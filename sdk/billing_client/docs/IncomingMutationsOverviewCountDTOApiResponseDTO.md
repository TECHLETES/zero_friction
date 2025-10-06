# IncomingMutationsOverviewCountDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**IncomingMutationsOverviewCountDTO**](IncomingMutationsOverviewCountDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.incoming_mutations_overview_count_dto_api_response_dto import IncomingMutationsOverviewCountDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingMutationsOverviewCountDTOApiResponseDTO from a JSON string
incoming_mutations_overview_count_dto_api_response_dto_instance = IncomingMutationsOverviewCountDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingMutationsOverviewCountDTOApiResponseDTO.to_json())

# convert the object into a dict
incoming_mutations_overview_count_dto_api_response_dto_dict = incoming_mutations_overview_count_dto_api_response_dto_instance.to_dict()
# create an instance of IncomingMutationsOverviewCountDTOApiResponseDTO from a dict
incoming_mutations_overview_count_dto_api_response_dto_from_dict = IncomingMutationsOverviewCountDTOApiResponseDTO.from_dict(incoming_mutations_overview_count_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


