# ClassDescription


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **str** |  | [optional] 
**class_type** | **str** |  | [optional] 
**properties** | [**List[ClassProperty]**](ClassProperty.md) |  | [optional] 

## Example

```python
from configuration_client.models.class_description import ClassDescription

# TODO update the JSON string below
json = "{}"
# create an instance of ClassDescription from a JSON string
class_description_instance = ClassDescription.from_json(json)
# print the JSON string representation of the object
print(ClassDescription.to_json())

# convert the object into a dict
class_description_dict = class_description_instance.to_dict()
# create an instance of ClassDescription from a dict
class_description_from_dict = ClassDescription.from_dict(class_description_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


