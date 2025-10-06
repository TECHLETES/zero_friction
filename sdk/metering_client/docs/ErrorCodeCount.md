# ErrorCodeCount


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_code** | **str** |  | [optional] 
**count** | **int** |  | [optional] 

## Example

```python
from metering_client.models.error_code_count import ErrorCodeCount

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorCodeCount from a JSON string
error_code_count_instance = ErrorCodeCount.from_json(json)
# print the JSON string representation of the object
print(ErrorCodeCount.to_json())

# convert the object into a dict
error_code_count_dict = error_code_count_instance.to_dict()
# create an instance of ErrorCodeCount from a dict
error_code_count_from_dict = ErrorCodeCount.from_dict(error_code_count_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


