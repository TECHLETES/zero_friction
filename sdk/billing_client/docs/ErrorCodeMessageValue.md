# ErrorCodeMessageValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_type** | [**DataType**](DataType.md) |  | [optional] 
**value** | **str** |  | [optional] 
**capitalize** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.error_code_message_value import ErrorCodeMessageValue

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorCodeMessageValue from a JSON string
error_code_message_value_instance = ErrorCodeMessageValue.from_json(json)
# print the JSON string representation of the object
print(ErrorCodeMessageValue.to_json())

# convert the object into a dict
error_code_message_value_dict = error_code_message_value_instance.to_dict()
# create an instance of ErrorCodeMessageValue from a dict
error_code_message_value_from_dict = ErrorCodeMessageValue.from_dict(error_code_message_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


