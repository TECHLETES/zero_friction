# CorrectionNoteScenarioDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CorrectionNoteScenarioDTO**](CorrectionNoteScenarioDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.correction_note_scenario_dto_api_response_dto import CorrectionNoteScenarioDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CorrectionNoteScenarioDTOApiResponseDTO from a JSON string
correction_note_scenario_dto_api_response_dto_instance = CorrectionNoteScenarioDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CorrectionNoteScenarioDTOApiResponseDTO.to_json())

# convert the object into a dict
correction_note_scenario_dto_api_response_dto_dict = correction_note_scenario_dto_api_response_dto_instance.to_dict()
# create an instance of CorrectionNoteScenarioDTOApiResponseDTO from a dict
correction_note_scenario_dto_api_response_dto_from_dict = CorrectionNoteScenarioDTOApiResponseDTO.from_dict(correction_note_scenario_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


