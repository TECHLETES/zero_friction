# IncidentalNoteScenarioDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**IncidentalNoteScenarioDTO**](IncidentalNoteScenarioDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.incidental_note_scenario_dto_api_response_dto import IncidentalNoteScenarioDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncidentalNoteScenarioDTOApiResponseDTO from a JSON string
incidental_note_scenario_dto_api_response_dto_instance = IncidentalNoteScenarioDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(IncidentalNoteScenarioDTOApiResponseDTO.to_json())

# convert the object into a dict
incidental_note_scenario_dto_api_response_dto_dict = incidental_note_scenario_dto_api_response_dto_instance.to_dict()
# create an instance of IncidentalNoteScenarioDTOApiResponseDTO from a dict
incidental_note_scenario_dto_api_response_dto_from_dict = IncidentalNoteScenarioDTOApiResponseDTO.from_dict(incidental_note_scenario_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


