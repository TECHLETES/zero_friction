# GetDataImportsQueryParameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**show_deleted** | **bool** |  | [optional]
**flex_search** | **str** |  | [optional]
**include_only_ids** | **List[str]** |  | [optional]
**exclude_ids** | **List[str]** |  | [optional]
**page_size** | **int** |  | [optional]

## Example

```python
from configuration_client.models.get_data_imports_query_parameters import GetDataImportsQueryParameters

# TODO update the JSON string below
json = "{}"
# create an instance of GetDataImportsQueryParameters from a JSON string
get_data_imports_query_parameters_instance = GetDataImportsQueryParameters.from_json(json)
# print the JSON string representation of the object
print(GetDataImportsQueryParameters.to_json())

# convert the object into a dict
get_data_imports_query_parameters_dict = get_data_imports_query_parameters_instance.to_dict()
# create an instance of GetDataImportsQueryParameters from a dict
get_data_imports_query_parameters_from_dict = GetDataImportsQueryParameters.from_dict(get_data_imports_query_parameters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
