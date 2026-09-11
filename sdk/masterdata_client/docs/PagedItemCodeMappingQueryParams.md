# PagedItemCodeMappingQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**accounting_code** | **str** |  | [optional] 
**category** | [**ItemCodeCategory**](ItemCodeCategory.md) |  | [optional] 
**only_unlinked** | **bool** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from masterdata_client.models.paged_item_code_mapping_query_params import PagedItemCodeMappingQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedItemCodeMappingQueryParams from a JSON string
paged_item_code_mapping_query_params_instance = PagedItemCodeMappingQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedItemCodeMappingQueryParams.to_json())

# convert the object into a dict
paged_item_code_mapping_query_params_dict = paged_item_code_mapping_query_params_instance.to_dict()
# create an instance of PagedItemCodeMappingQueryParams from a dict
paged_item_code_mapping_query_params_from_dict = PagedItemCodeMappingQueryParams.from_dict(paged_item_code_mapping_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


