# SortVersion


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**full_version** | **int** |  | [optional] 
**sort_id** | **str** |  | [optional] 

## Example

```python
from attachments_client.models.sort_version import SortVersion

# TODO update the JSON string below
json = "{}"
# create an instance of SortVersion from a JSON string
sort_version_instance = SortVersion.from_json(json)
# print the JSON string representation of the object
print(SortVersion.to_json())

# convert the object into a dict
sort_version_dict = sort_version_instance.to_dict()
# create an instance of SortVersion from a dict
sort_version_from_dict = SortVersion.from_dict(sort_version_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


