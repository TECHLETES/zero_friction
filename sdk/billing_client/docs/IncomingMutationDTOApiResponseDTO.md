# IncomingMutationDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**IncomingMutationDTO**](IncomingMutationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.incoming_mutation_dto_api_response_dto import IncomingMutationDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingMutationDTOApiResponseDTO from a JSON string
incoming_mutation_dto_api_response_dto_instance = IncomingMutationDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingMutationDTOApiResponseDTO.to_json())

# convert the object into a dict
incoming_mutation_dto_api_response_dto_dict = incoming_mutation_dto_api_response_dto_instance.to_dict()
# create an instance of IncomingMutationDTOApiResponseDTO from a dict
incoming_mutation_dto_api_response_dto_from_dict = IncomingMutationDTOApiResponseDTO.from_dict(incoming_mutation_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


