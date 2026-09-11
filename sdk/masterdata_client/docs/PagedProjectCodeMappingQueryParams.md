# PagedProjectCodeMappingQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**accounting_code** | **str** |  | [optional]
**category** | [**ProjectCodeCategory**](ProjectCodeCategory.md) |  | [optional]
**only_unlinked** | **bool** |  | [optional]
**flex_search** | **str** |  | [optional]
**include_only_ids** | **List[str]** |  | [optional]
**exclude_ids** | **List[str]** |  | [optional]
**page_size** | **int** |  | [optional]

## Example

```python
from masterdata_client.models.paged_project_code_mapping_query_params import PagedProjectCodeMappingQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedProjectCodeMappingQueryParams from a JSON string
paged_project_code_mapping_query_params_instance = PagedProjectCodeMappingQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedProjectCodeMappingQueryParams.to_json())

# convert the object into a dict
paged_project_code_mapping_query_params_dict = paged_project_code_mapping_query_params_instance.to_dict()
# create an instance of PagedProjectCodeMappingQueryParams from a dict
paged_project_code_mapping_query_params_from_dict = PagedProjectCodeMappingQueryParams.from_dict(paged_project_code_mapping_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
