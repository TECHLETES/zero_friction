# LocalisedSystemMessageDtoValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_type** | [**DataType**](DataType.md) |  | [optional] 
**value** | **str** |  | [optional] 

## Example

```python
from billing_client.models.localised_system_message_dto_value import LocalisedSystemMessageDtoValue

# TODO update the JSON string below
json = "{}"
# create an instance of LocalisedSystemMessageDtoValue from a JSON string
localised_system_message_dto_value_instance = LocalisedSystemMessageDtoValue.from_json(json)
# print the JSON string representation of the object
print(LocalisedSystemMessageDtoValue.to_json())

# convert the object into a dict
localised_system_message_dto_value_dict = localised_system_message_dto_value_instance.to_dict()
# create an instance of LocalisedSystemMessageDtoValue from a dict
localised_system_message_dto_value_from_dict = LocalisedSystemMessageDtoValue.from_dict(localised_system_message_dto_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


