# RelatedEntityDTO

Represents an entity related to the validation error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) | Type of the entity subject | [optional] 
**entity_subject_id** | **str** | Identifier of the entity subject | [optional] 

## Example

```python
from billing_client.models.related_entity_dto import RelatedEntityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RelatedEntityDTO from a JSON string
related_entity_dto_instance = RelatedEntityDTO.from_json(json)
# print the JSON string representation of the object
print(RelatedEntityDTO.to_json())

# convert the object into a dict
related_entity_dto_dict = related_entity_dto_instance.to_dict()
# create an instance of RelatedEntityDTO from a dict
related_entity_dto_from_dict = RelatedEntityDTO.from_dict(related_entity_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


