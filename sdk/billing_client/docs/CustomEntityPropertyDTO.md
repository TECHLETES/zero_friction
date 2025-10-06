# CustomEntityPropertyDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom_entity_property_type_id** | **str** |  | [optional] 
**values** | [**List[CustomEntityPropertyValueDTO]**](CustomEntityPropertyValueDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.custom_entity_property_dto import CustomEntityPropertyDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomEntityPropertyDTO from a JSON string
custom_entity_property_dto_instance = CustomEntityPropertyDTO.from_json(json)
# print the JSON string representation of the object
print(CustomEntityPropertyDTO.to_json())

# convert the object into a dict
custom_entity_property_dto_dict = custom_entity_property_dto_instance.to_dict()
# create an instance of CustomEntityPropertyDTO from a dict
custom_entity_property_dto_from_dict = CustomEntityPropertyDTO.from_dict(custom_entity_property_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


