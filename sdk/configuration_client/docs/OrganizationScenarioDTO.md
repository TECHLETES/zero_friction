# OrganizationScenarioDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntityTypeDTO**](EntityTypeDTO.md) |  | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**pdf_template** | [**BasePdfTemplateDTO**](BasePdfTemplateDTO.md) |  | [optional] 
**email_template** | [**BaseEmailTemplateDTO**](BaseEmailTemplateDTO.md) |  | [optional] 
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**translation_list_id** | **str** |  | [optional] 
**translation_list_history_id** | **str** |  | [optional] 
**data_type** | [**TemplateObjectType**](TemplateObjectType.md) |  | [optional] 
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**entity_subject_sub_type** | **str** |  | [optional] 
**grouping_type** | [**ScenarioGroupingType**](ScenarioGroupingType.md) |  | [optional] 
**available_communication_types** | [**List[CommunicationType]**](CommunicationType.md) |  | [optional] 

## Example

```python
from configuration_client.models.organization_scenario_dto import OrganizationScenarioDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationScenarioDTO from a JSON string
organization_scenario_dto_instance = OrganizationScenarioDTO.from_json(json)
# print the JSON string representation of the object
print(OrganizationScenarioDTO.to_json())

# convert the object into a dict
organization_scenario_dto_dict = organization_scenario_dto_instance.to_dict()
# create an instance of OrganizationScenarioDTO from a dict
organization_scenario_dto_from_dict = OrganizationScenarioDTO.from_dict(organization_scenario_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


