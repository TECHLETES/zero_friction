# CostUnitDTO

Represents a cost unit with its associated description, code, and external accounting metadata.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**description** | **str** | The description of the cost unit. | [optional] 
**code** | **str** | The code of the cost unit. | 
**external_accounting_metadata** | [**ExternalAccountingMetadataDTO**](ExternalAccountingMetadataDTO.md) | Metadata about the external accounting system from which this cost unit was retrieved. | 

## Example

```python
from configuration_client.models.cost_unit_dto import CostUnitDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostUnitDTO from a JSON string
cost_unit_dto_instance = CostUnitDTO.from_json(json)
# print the JSON string representation of the object
print(CostUnitDTO.to_json())

# convert the object into a dict
cost_unit_dto_dict = cost_unit_dto_instance.to_dict()
# create an instance of CostUnitDTO from a dict
cost_unit_dto_from_dict = CostUnitDTO.from_dict(cost_unit_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


