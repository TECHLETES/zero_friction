# PeriodForEntityDTO

Represents a period associated with an entity in the estimated invoice.  This DTO contains information about the entity's validity period and its current status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_id** | **str** | The unique identifier of the entity. | [optional] 
**entity_period** | [**DateRange**](DateRange.md) | The date range during which the entity is valid. | [optional] 
**out_dated** | **bool** | Indicates whether the entity&#39;s period is outdated. | [optional] 

## Example

```python
from billing_client.models.period_for_entity_dto import PeriodForEntityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PeriodForEntityDTO from a JSON string
period_for_entity_dto_instance = PeriodForEntityDTO.from_json(json)
# print the JSON string representation of the object
print(PeriodForEntityDTO.to_json())

# convert the object into a dict
period_for_entity_dto_dict = period_for_entity_dto_instance.to_dict()
# create an instance of PeriodForEntityDTO from a dict
period_for_entity_dto_from_dict = PeriodForEntityDTO.from_dict(period_for_entity_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


