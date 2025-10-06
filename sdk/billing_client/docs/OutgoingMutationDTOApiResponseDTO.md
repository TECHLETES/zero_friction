# OutgoingMutationDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**OutgoingMutationDTO**](OutgoingMutationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.outgoing_mutation_dto_api_response_dto import OutgoingMutationDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMutationDTOApiResponseDTO from a JSON string
outgoing_mutation_dto_api_response_dto_instance = OutgoingMutationDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMutationDTOApiResponseDTO.to_json())

# convert the object into a dict
outgoing_mutation_dto_api_response_dto_dict = outgoing_mutation_dto_api_response_dto_instance.to_dict()
# create an instance of OutgoingMutationDTOApiResponseDTO from a dict
outgoing_mutation_dto_api_response_dto_from_dict = OutgoingMutationDTOApiResponseDTO.from_dict(outgoing_mutation_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


