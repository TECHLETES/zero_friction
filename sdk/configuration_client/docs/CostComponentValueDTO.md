# CostComponentValueDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost_component_id** | **str** |  | [optional]
**value** | **float** |  |
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  |
**deleted** | **bool** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.cost_component_value_dto import CostComponentValueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostComponentValueDTO from a JSON string
cost_component_value_dto_instance = CostComponentValueDTO.from_json(json)
# print the JSON string representation of the object
print(CostComponentValueDTO.to_json())

# convert the object into a dict
cost_component_value_dto_dict = cost_component_value_dto_instance.to_dict()
# create an instance of CostComponentValueDTO from a dict
cost_component_value_dto_from_dict = CostComponentValueDTO.from_dict(cost_component_value_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
