# CustomEntityPropertyTypeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**description** | **str** |  | [optional]
**deleted** | **bool** |  | [optional]
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**value_type** | [**BasePropertyValueTypeDTO**](BasePropertyValueTypeDTO.md) |  | [optional]
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional]
**localised_fields** | **List[str]** |  | [optional]
**translated_fields** | **Dict[str, Dict[str, str]]** |  | [optional]
**show_in_header** | **bool** |  | [optional]
**tag_color** | [**CustomEntityPropertyTypeTagColor**](CustomEntityPropertyTypeTagColor.md) |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.custom_entity_property_type_dto import CustomEntityPropertyTypeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomEntityPropertyTypeDTO from a JSON string
custom_entity_property_type_dto_instance = CustomEntityPropertyTypeDTO.from_json(json)
# print the JSON string representation of the object
print(CustomEntityPropertyTypeDTO.to_json())

# convert the object into a dict
custom_entity_property_type_dto_dict = custom_entity_property_type_dto_instance.to_dict()
# create an instance of CustomEntityPropertyTypeDTO from a dict
custom_entity_property_type_dto_from_dict = CustomEntityPropertyTypeDTO.from_dict(custom_entity_property_type_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
