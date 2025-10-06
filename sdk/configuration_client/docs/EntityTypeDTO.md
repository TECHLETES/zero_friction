# EntityTypeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**entity_subject_sub_type** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.entity_type_dto import EntityTypeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EntityTypeDTO from a JSON string
entity_type_dto_instance = EntityTypeDTO.from_json(json)
# print the JSON string representation of the object
print(EntityTypeDTO.to_json())

# convert the object into a dict
entity_type_dto_dict = entity_type_dto_instance.to_dict()
# create an instance of EntityTypeDTO from a dict
entity_type_dto_from_dict = EntityTypeDTO.from_dict(entity_type_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


