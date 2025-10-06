# IScenarioDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**translation_list_id** | **str** |  | [optional] 
**translation_list_history_id** | **str** |  | [optional] 
**data_type** | [**TemplateObjectType**](TemplateObjectType.md) |  | [optional] 
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**entity_subject_sub_type** | **str** |  | [optional] 
**grouping_type** | [**ScenarioGroupingType**](ScenarioGroupingType.md) |  | [optional] 
**entity_type** | [**EntityTypeDTO**](EntityTypeDTO.md) |  | [optional] 
**available_communication_types** | [**List[CommunicationType]**](CommunicationType.md) |  | [optional] 

## Example

```python
from configuration_client.models.i_scenario_dto import IScenarioDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IScenarioDTO from a JSON string
i_scenario_dto_instance = IScenarioDTO.from_json(json)
# print the JSON string representation of the object
print(IScenarioDTO.to_json())

# convert the object into a dict
i_scenario_dto_dict = i_scenario_dto_instance.to_dict()
# create an instance of IScenarioDTO from a dict
i_scenario_dto_from_dict = IScenarioDTO.from_dict(i_scenario_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


