# NumberSequenceDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**NumberSequenceDTO**](NumberSequenceDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.number_sequence_dto_api_response_dto import NumberSequenceDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of NumberSequenceDTOApiResponseDTO from a JSON string
number_sequence_dto_api_response_dto_instance = NumberSequenceDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(NumberSequenceDTOApiResponseDTO.to_json())

# convert the object into a dict
number_sequence_dto_api_response_dto_dict = number_sequence_dto_api_response_dto_instance.to_dict()
# create an instance of NumberSequenceDTOApiResponseDTO from a dict
number_sequence_dto_api_response_dto_from_dict = NumberSequenceDTOApiResponseDTO.from_dict(number_sequence_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


