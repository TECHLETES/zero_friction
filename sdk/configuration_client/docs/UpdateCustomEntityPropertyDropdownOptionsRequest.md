# UpdateCustomEntityPropertyDropdownOptionsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom_entity_property_type_id** | **str** |  | [optional] 
**options** | [**List[CustomEntityPropertyTypeDropdownOptionDTO]**](CustomEntityPropertyTypeDropdownOptionDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_custom_entity_property_dropdown_options_request import UpdateCustomEntityPropertyDropdownOptionsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomEntityPropertyDropdownOptionsRequest from a JSON string
update_custom_entity_property_dropdown_options_request_instance = UpdateCustomEntityPropertyDropdownOptionsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomEntityPropertyDropdownOptionsRequest.to_json())

# convert the object into a dict
update_custom_entity_property_dropdown_options_request_dict = update_custom_entity_property_dropdown_options_request_instance.to_dict()
# create an instance of UpdateCustomEntityPropertyDropdownOptionsRequest from a dict
update_custom_entity_property_dropdown_options_request_from_dict = UpdateCustomEntityPropertyDropdownOptionsRequest.from_dict(update_custom_entity_property_dropdown_options_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


