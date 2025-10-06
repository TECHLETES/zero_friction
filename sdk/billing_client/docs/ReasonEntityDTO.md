# ReasonEntityDTO

Represents the entity that caused the validation error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) | Type of the entity subject | [optional] 
**entity_subject_id** | **str** | Identifier of the entity subject | [optional] 

## Example

```python
from billing_client.models.reason_entity_dto import ReasonEntityDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ReasonEntityDTO from a JSON string
reason_entity_dto_instance = ReasonEntityDTO.from_json(json)
# print the JSON string representation of the object
print(ReasonEntityDTO.to_json())

# convert the object into a dict
reason_entity_dto_dict = reason_entity_dto_instance.to_dict()
# create an instance of ReasonEntityDTO from a dict
reason_entity_dto_from_dict = ReasonEntityDTO.from_dict(reason_entity_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


