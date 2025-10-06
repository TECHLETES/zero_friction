# ReminderScenarioDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ReminderScenarioDTO**](ReminderScenarioDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.reminder_scenario_dto_api_response_dto import ReminderScenarioDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ReminderScenarioDTOApiResponseDTO from a JSON string
reminder_scenario_dto_api_response_dto_instance = ReminderScenarioDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ReminderScenarioDTOApiResponseDTO.to_json())

# convert the object into a dict
reminder_scenario_dto_api_response_dto_dict = reminder_scenario_dto_api_response_dto_instance.to_dict()
# create an instance of ReminderScenarioDTOApiResponseDTO from a dict
reminder_scenario_dto_api_response_dto_from_dict = ReminderScenarioDTOApiResponseDTO.from_dict(reminder_scenario_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


