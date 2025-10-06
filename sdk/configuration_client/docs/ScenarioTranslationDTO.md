# ScenarioTranslationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**status** | [**TranslationStatus**](TranslationStatus.md) |  | [optional] 
**has_default_translation** | **bool** |  | [optional] 
**translations** | **Dict[str, Optional[str]]** |  | [optional] 
**use_cases** | [**List[TemplateUsecase]**](TemplateUsecase.md) |  | [optional] 

## Example

```python
from configuration_client.models.scenario_translation_dto import ScenarioTranslationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ScenarioTranslationDTO from a JSON string
scenario_translation_dto_instance = ScenarioTranslationDTO.from_json(json)
# print the JSON string representation of the object
print(ScenarioTranslationDTO.to_json())

# convert the object into a dict
scenario_translation_dto_dict = scenario_translation_dto_instance.to_dict()
# create an instance of ScenarioTranslationDTO from a dict
scenario_translation_dto_from_dict = ScenarioTranslationDTO.from_dict(scenario_translation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


