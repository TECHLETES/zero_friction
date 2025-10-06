# UpdateCustomEntityPropertyTypeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**show_in_header** | **bool** |  | [optional] 
**tag_color** | [**CustomEntityPropertyTypeTagColor**](CustomEntityPropertyTypeTagColor.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_custom_entity_property_type_request import UpdateCustomEntityPropertyTypeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomEntityPropertyTypeRequest from a JSON string
update_custom_entity_property_type_request_instance = UpdateCustomEntityPropertyTypeRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomEntityPropertyTypeRequest.to_json())

# convert the object into a dict
update_custom_entity_property_type_request_dict = update_custom_entity_property_type_request_instance.to_dict()
# create an instance of UpdateCustomEntityPropertyTypeRequest from a dict
update_custom_entity_property_type_request_from_dict = UpdateCustomEntityPropertyTypeRequest.from_dict(update_custom_entity_property_type_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


