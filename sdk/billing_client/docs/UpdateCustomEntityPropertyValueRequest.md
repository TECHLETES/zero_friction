# UpdateCustomEntityPropertyValueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value_decimal** | **float** |  | [optional] 
**value_string** | **str** |  | [optional] 
**value_boolean** | **bool** |  | [optional] 
**value_number** | **int** |  | [optional] 
**value_date_time** | **datetime** |  | [optional] 
**value_dropdown** | **List[str]** |  | [optional] 

## Example

```python
from billing_client.models.update_custom_entity_property_value_request import UpdateCustomEntityPropertyValueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomEntityPropertyValueRequest from a JSON string
update_custom_entity_property_value_request_instance = UpdateCustomEntityPropertyValueRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomEntityPropertyValueRequest.to_json())

# convert the object into a dict
update_custom_entity_property_value_request_dict = update_custom_entity_property_value_request_instance.to_dict()
# create an instance of UpdateCustomEntityPropertyValueRequest from a dict
update_custom_entity_property_value_request_from_dict = UpdateCustomEntityPropertyValueRequest.from_dict(update_custom_entity_property_value_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


