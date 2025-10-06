# ImpactedEntityDTO

Represents the entity that is impacted by the validation error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) | Type of the entity subject | [optional] 
**entity_subject_id** | **str** | Identifier of the entity subject | [optional] 

## Example

```python
from billing_client.models.impacted_entity_dto import ImpactedEntityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ImpactedEntityDTO from a JSON string
impacted_entity_dto_instance = ImpactedEntityDTO.from_json(json)
# print the JSON string representation of the object
print(ImpactedEntityDTO.to_json())

# convert the object into a dict
impacted_entity_dto_dict = impacted_entity_dto_instance.to_dict()
# create an instance of ImpactedEntityDTO from a dict
impacted_entity_dto_from_dict = ImpactedEntityDTO.from_dict(impacted_entity_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


