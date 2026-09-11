# BasePropertyValueTypeDTODropdownPropertyValueTypeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** | Possible values: &#39;string&#39;, &#39;number&#39;, &#39;decimal&#39;, &#39;boolean&#39;, &#39;datetime&#39;, &#39;dropdown&#39; | [optional]
**options** | [**List[CustomEntityPropertyTypeDropdownOptionDTO]**](CustomEntityPropertyTypeDropdownOptionDTO.md) |  | [optional]

## Example

```python
from configuration_client.models.base_property_value_type_dto_dropdown_property_value_type_dto import BasePropertyValueTypeDTODropdownPropertyValueTypeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BasePropertyValueTypeDTODropdownPropertyValueTypeDTO from a JSON string
base_property_value_type_dto_dropdown_property_value_type_dto_instance = BasePropertyValueTypeDTODropdownPropertyValueTypeDTO.from_json(json)
# print the JSON string representation of the object
print(BasePropertyValueTypeDTODropdownPropertyValueTypeDTO.to_json())

# convert the object into a dict
base_property_value_type_dto_dropdown_property_value_type_dto_dict = base_property_value_type_dto_dropdown_property_value_type_dto_instance.to_dict()
# create an instance of BasePropertyValueTypeDTODropdownPropertyValueTypeDTO from a dict
base_property_value_type_dto_dropdown_property_value_type_dto_from_dict = BasePropertyValueTypeDTODropdownPropertyValueTypeDTO.from_dict(base_property_value_type_dto_dropdown_property_value_type_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
