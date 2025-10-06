# UpdateCustomEntityPropertiesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**properties** | [**List[UpdateCustomEntityPropertyRequest]**](UpdateCustomEntityPropertyRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomEntityPropertiesRequest from a JSON string
update_custom_entity_properties_request_instance = UpdateCustomEntityPropertiesRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomEntityPropertiesRequest.to_json())

# convert the object into a dict
update_custom_entity_properties_request_dict = update_custom_entity_properties_request_instance.to_dict()
# create an instance of UpdateCustomEntityPropertiesRequest from a dict
update_custom_entity_properties_request_from_dict = UpdateCustomEntityPropertiesRequest.from_dict(update_custom_entity_properties_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


