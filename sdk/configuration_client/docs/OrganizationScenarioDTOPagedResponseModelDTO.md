# OrganizationScenarioDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[OrganizationScenarioDTO]**](OrganizationScenarioDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.organization_scenario_dto_paged_response_model_dto import OrganizationScenarioDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationScenarioDTOPagedResponseModelDTO from a JSON string
organization_scenario_dto_paged_response_model_dto_instance = OrganizationScenarioDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(OrganizationScenarioDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
organization_scenario_dto_paged_response_model_dto_dict = organization_scenario_dto_paged_response_model_dto_instance.to_dict()
# create an instance of OrganizationScenarioDTOPagedResponseModelDTO from a dict
organization_scenario_dto_paged_response_model_dto_from_dict = OrganizationScenarioDTOPagedResponseModelDTO.from_dict(organization_scenario_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


