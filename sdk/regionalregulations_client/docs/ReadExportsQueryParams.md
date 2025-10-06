# ReadExportsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 

## Example

```python
from regionalregulations_client.models.read_exports_query_params import ReadExportsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of ReadExportsQueryParams from a JSON string
read_exports_query_params_instance = ReadExportsQueryParams.from_json(json)
# print the JSON string representation of the object
print(ReadExportsQueryParams.to_json())

# convert the object into a dict
read_exports_query_params_dict = read_exports_query_params_instance.to_dict()
# create an instance of ReadExportsQueryParams from a dict
read_exports_query_params_from_dict = ReadExportsQueryParams.from_dict(read_exports_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


