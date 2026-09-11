# IScenarioDTORejectMoveOutScenarioDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**email_template** | [**RejectMoveOutEmailTemplateDTO**](RejectMoveOutEmailTemplateDTO.md) |  | [optional]
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional]
**auto_fallback_to_postal** | **bool** |  | [optional]
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
from configuration_client.models.i_scenario_dto_reject_move_out_scenario_dto import IScenarioDTORejectMoveOutScenarioDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IScenarioDTORejectMoveOutScenarioDTO from a JSON string
i_scenario_dto_reject_move_out_scenario_dto_instance = IScenarioDTORejectMoveOutScenarioDTO.from_json(json)
# print the JSON string representation of the object
print(IScenarioDTORejectMoveOutScenarioDTO.to_json())

# convert the object into a dict
i_scenario_dto_reject_move_out_scenario_dto_dict = i_scenario_dto_reject_move_out_scenario_dto_instance.to_dict()
# create an instance of IScenarioDTORejectMoveOutScenarioDTO from a dict
i_scenario_dto_reject_move_out_scenario_dto_from_dict = IScenarioDTORejectMoveOutScenarioDTO.from_dict(i_scenario_dto_reject_move_out_scenario_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
