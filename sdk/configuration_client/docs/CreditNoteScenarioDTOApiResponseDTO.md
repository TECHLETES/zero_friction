# CreditNoteScenarioDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CreditNoteScenarioDTO**](CreditNoteScenarioDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.credit_note_scenario_dto_api_response_dto import CreditNoteScenarioDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CreditNoteScenarioDTOApiResponseDTO from a JSON string
credit_note_scenario_dto_api_response_dto_instance = CreditNoteScenarioDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CreditNoteScenarioDTOApiResponseDTO.to_json())

# convert the object into a dict
credit_note_scenario_dto_api_response_dto_dict = credit_note_scenario_dto_api_response_dto_instance.to_dict()
# create an instance of CreditNoteScenarioDTOApiResponseDTO from a dict
credit_note_scenario_dto_api_response_dto_from_dict = CreditNoteScenarioDTOApiResponseDTO.from_dict(credit_note_scenario_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


