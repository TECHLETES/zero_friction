# CustomEntityPropertyTypeDropdownOptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**option** | **str** |  | [optional] 
**deleted** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.custom_entity_property_type_dropdown_option_dto import CustomEntityPropertyTypeDropdownOptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomEntityPropertyTypeDropdownOptionDTO from a JSON string
custom_entity_property_type_dropdown_option_dto_instance = CustomEntityPropertyTypeDropdownOptionDTO.from_json(json)
# print the JSON string representation of the object
print(CustomEntityPropertyTypeDropdownOptionDTO.to_json())

# convert the object into a dict
custom_entity_property_type_dropdown_option_dto_dict = custom_entity_property_type_dropdown_option_dto_instance.to_dict()
# create an instance of CustomEntityPropertyTypeDropdownOptionDTO from a dict
custom_entity_property_type_dropdown_option_dto_from_dict = CustomEntityPropertyTypeDropdownOptionDTO.from_dict(custom_entity_property_type_dropdown_option_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


