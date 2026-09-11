# CostComponentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**description** | **str** |  | [optional]
**deleted** | **bool** |  | [optional]
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional]
**localised_fields** | **List[str]** |  | [optional]
**translated_fields** | **Dict[str, Dict[str, str]]** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.cost_component_dto import CostComponentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostComponentDTO from a JSON string
cost_component_dto_instance = CostComponentDTO.from_json(json)
# print the JSON string representation of the object
print(CostComponentDTO.to_json())

# convert the object into a dict
cost_component_dto_dict = cost_component_dto_instance.to_dict()
# create an instance of CostComponentDTO from a dict
cost_component_dto_from_dict = CostComponentDTO.from_dict(cost_component_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
