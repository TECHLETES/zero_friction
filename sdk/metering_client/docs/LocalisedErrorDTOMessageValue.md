# LocalisedErrorDTOMessageValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_type** | [**DataType**](DataType.md) |  | [optional] 
**value** | **str** |  | [optional] 
**capitalize** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.localised_error_dto_message_value import LocalisedErrorDTOMessageValue

# TODO update the JSON string below
json = "{}"
# create an instance of LocalisedErrorDTOMessageValue from a JSON string
localised_error_dto_message_value_instance = LocalisedErrorDTOMessageValue.from_json(json)
# print the JSON string representation of the object
print(LocalisedErrorDTOMessageValue.to_json())

# convert the object into a dict
localised_error_dto_message_value_dict = localised_error_dto_message_value_instance.to_dict()
# create an instance of LocalisedErrorDTOMessageValue from a dict
localised_error_dto_message_value_from_dict = LocalisedErrorDTOMessageValue.from_dict(localised_error_dto_message_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


