# ScenarioTranslationListDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ScenarioTranslationListDTO**](ScenarioTranslationListDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.scenario_translation_list_dto_api_response_dto import ScenarioTranslationListDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ScenarioTranslationListDTOApiResponseDTO from a JSON string
scenario_translation_list_dto_api_response_dto_instance = ScenarioTranslationListDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ScenarioTranslationListDTOApiResponseDTO.to_json())

# convert the object into a dict
scenario_translation_list_dto_api_response_dto_dict = scenario_translation_list_dto_api_response_dto_instance.to_dict()
# create an instance of ScenarioTranslationListDTOApiResponseDTO from a dict
scenario_translation_list_dto_api_response_dto_from_dict = ScenarioTranslationListDTOApiResponseDTO.from_dict(scenario_translation_list_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


