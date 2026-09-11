# PagedItemCodesQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional]
**description** | **str** |  | [optional]
**flex_search** | **str** |  | [optional]
**include_only_ids** | **List[str]** |  | [optional]
**exclude_ids** | **List[str]** |  | [optional]
**page_size** | **int** |  | [optional]

## Example

```python
from configuration_client.models.paged_item_codes_query_params import PagedItemCodesQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedItemCodesQueryParams from a JSON string
paged_item_codes_query_params_instance = PagedItemCodesQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedItemCodesQueryParams.to_json())

# convert the object into a dict
paged_item_codes_query_params_dict = paged_item_codes_query_params_instance.to_dict()
# create an instance of PagedItemCodesQueryParams from a dict
paged_item_codes_query_params_from_dict = PagedItemCodesQueryParams.from_dict(paged_item_codes_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
