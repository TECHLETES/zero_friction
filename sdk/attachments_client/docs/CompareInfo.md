# CompareInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] [readonly] 
**version** | [**SortVersion**](SortVersion.md) |  | [optional] [readonly] 
**lcid** | **int** |  | [optional] [readonly] 

## Example

```python
from attachments_client.models.compare_info import CompareInfo

# TODO update the JSON string below
json = "{}"
# create an instance of CompareInfo from a JSON string
compare_info_instance = CompareInfo.from_json(json)
# print the JSON string representation of the object
print(CompareInfo.to_json())

# convert the object into a dict
compare_info_dict = compare_info_instance.to_dict()
# create an instance of CompareInfo from a dict
compare_info_from_dict = CompareInfo.from_dict(compare_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


