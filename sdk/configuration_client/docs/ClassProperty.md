# ClassProperty


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**property_type** | **str** |  | [optional] 
**properties** | [**List[ClassProperty]**](ClassProperty.md) |  | [optional] 
**required** | **bool** |  | [optional] 
**default_value** | **object** |  | [optional] 
**read_only** | **bool** |  | [optional] 
**secret** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.class_property import ClassProperty

# TODO update the JSON string below
json = "{}"
# create an instance of ClassProperty from a JSON string
class_property_instance = ClassProperty.from_json(json)
# print the JSON string representation of the object
print(ClassProperty.to_json())

# convert the object into a dict
class_property_dict = class_property_instance.to_dict()
# create an instance of ClassProperty from a dict
class_property_from_dict = ClassProperty.from_dict(class_property_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


