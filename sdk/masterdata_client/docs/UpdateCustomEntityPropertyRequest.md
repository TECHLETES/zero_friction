# UpdateCustomEntityPropertyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom_entity_property_type_id** | **str** |  | [optional] 
**values** | [**List[UpdateCustomEntityPropertyValueRequest]**](UpdateCustomEntityPropertyValueRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_custom_entity_property_request import UpdateCustomEntityPropertyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomEntityPropertyRequest from a JSON string
update_custom_entity_property_request_instance = UpdateCustomEntityPropertyRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomEntityPropertyRequest.to_json())

# convert the object into a dict
update_custom_entity_property_request_dict = update_custom_entity_property_request_instance.to_dict()
# create an instance of UpdateCustomEntityPropertyRequest from a dict
update_custom_entity_property_request_from_dict = UpdateCustomEntityPropertyRequest.from_dict(update_custom_entity_property_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


