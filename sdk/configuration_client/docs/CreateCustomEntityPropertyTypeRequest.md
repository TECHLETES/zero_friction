# CreateCustomEntityPropertyTypeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**show_in_header** | **bool** |  | [optional] 
**tag_color** | [**CustomEntityPropertyTypeTagColor**](CustomEntityPropertyTypeTagColor.md) |  | [optional] 
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**value_type** | **object** |  | [optional] 

## Example

```python
from configuration_client.models.create_custom_entity_property_type_request import CreateCustomEntityPropertyTypeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCustomEntityPropertyTypeRequest from a JSON string
create_custom_entity_property_type_request_instance = CreateCustomEntityPropertyTypeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCustomEntityPropertyTypeRequest.to_json())

# convert the object into a dict
create_custom_entity_property_type_request_dict = create_custom_entity_property_type_request_instance.to_dict()
# create an instance of CreateCustomEntityPropertyTypeRequest from a dict
create_custom_entity_property_type_request_from_dict = CreateCustomEntityPropertyTypeRequest.from_dict(create_custom_entity_property_type_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


