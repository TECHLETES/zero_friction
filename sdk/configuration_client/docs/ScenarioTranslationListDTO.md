# ScenarioTranslationListDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**template_entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**template_entity_sub_type** | **str** |  | [optional] 
**scenario_translations** | [**List[ScenarioTranslationDTO]**](ScenarioTranslationDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.scenario_translation_list_dto import ScenarioTranslationListDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ScenarioTranslationListDTO from a JSON string
scenario_translation_list_dto_instance = ScenarioTranslationListDTO.from_json(json)
# print the JSON string representation of the object
print(ScenarioTranslationListDTO.to_json())

# convert the object into a dict
scenario_translation_list_dto_dict = scenario_translation_list_dto_instance.to_dict()
# create an instance of ScenarioTranslationListDTO from a dict
scenario_translation_list_dto_from_dict = ScenarioTranslationListDTO.from_dict(scenario_translation_list_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


