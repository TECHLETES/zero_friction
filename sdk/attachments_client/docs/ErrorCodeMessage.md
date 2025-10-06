# ErrorCodeMessage


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_code** | [**ErrorCode**](ErrorCode.md) |  | [optional] 
**values** | [**List[ErrorCodeMessageValue]**](ErrorCodeMessageValue.md) |  | [optional] 

## Example

```python
from attachments_client.models.error_code_message import ErrorCodeMessage

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorCodeMessage from a JSON string
error_code_message_instance = ErrorCodeMessage.from_json(json)
# print the JSON string representation of the object
print(ErrorCodeMessage.to_json())

# convert the object into a dict
error_code_message_dict = error_code_message_instance.to_dict()
# create an instance of ErrorCodeMessage from a dict
error_code_message_from_dict = ErrorCodeMessage.from_dict(error_code_message_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


