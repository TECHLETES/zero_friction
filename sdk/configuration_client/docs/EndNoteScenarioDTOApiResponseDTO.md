# EndNoteScenarioDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**EndNoteScenarioDTO**](EndNoteScenarioDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.end_note_scenario_dto_api_response_dto import EndNoteScenarioDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EndNoteScenarioDTOApiResponseDTO from a JSON string
end_note_scenario_dto_api_response_dto_instance = EndNoteScenarioDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(EndNoteScenarioDTOApiResponseDTO.to_json())

# convert the object into a dict
end_note_scenario_dto_api_response_dto_dict = end_note_scenario_dto_api_response_dto_instance.to_dict()
# create an instance of EndNoteScenarioDTOApiResponseDTO from a dict
end_note_scenario_dto_api_response_dto_from_dict = EndNoteScenarioDTOApiResponseDTO.from_dict(end_note_scenario_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


