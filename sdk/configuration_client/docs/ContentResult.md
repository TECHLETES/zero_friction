# ContentResult


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **str** |  | [optional] 
**content_type** | **str** |  | [optional] 
**status_code** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.content_result import ContentResult

# TODO update the JSON string below
json = "{}"
# create an instance of ContentResult from a JSON string
content_result_instance = ContentResult.from_json(json)
# print the JSON string representation of the object
print(ContentResult.to_json())

# convert the object into a dict
content_result_dict = content_result_instance.to_dict()
# create an instance of ContentResult from a dict
content_result_from_dict = ContentResult.from_dict(content_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


