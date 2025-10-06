# CustomEntityPropertyValueDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value_decimal** | **float** |  | [optional] 
**value_string** | **str** |  | [optional] 
**value_boolean** | **bool** |  | [optional] 
**value_number** | **int** |  | [optional] 
**value_date_time** | **datetime** |  | [optional] 
**value_dropdown** | **List[str]** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.custom_entity_property_value_dto import CustomEntityPropertyValueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomEntityPropertyValueDTO from a JSON string
custom_entity_property_value_dto_instance = CustomEntityPropertyValueDTO.from_json(json)
# print the JSON string representation of the object
print(CustomEntityPropertyValueDTO.to_json())

# convert the object into a dict
custom_entity_property_value_dto_dict = custom_entity_property_value_dto_instance.to_dict()
# create an instance of CustomEntityPropertyValueDTO from a dict
custom_entity_property_value_dto_from_dict = CustomEntityPropertyValueDTO.from_dict(custom_entity_property_value_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


