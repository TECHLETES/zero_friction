# PagedVatCodesQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional]
**include_only_ids** | **List[str]** |  | [optional]
**exclude_ids** | **List[str]** |  | [optional]
**page_size** | **int** |  | [optional]

## Example

```python
from configuration_client.models.paged_vat_codes_query_params import PagedVatCodesQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedVatCodesQueryParams from a JSON string
paged_vat_codes_query_params_instance = PagedVatCodesQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedVatCodesQueryParams.to_json())

# convert the object into a dict
paged_vat_codes_query_params_dict = paged_vat_codes_query_params_instance.to_dict()
# create an instance of PagedVatCodesQueryParams from a dict
paged_vat_codes_query_params_from_dict = PagedVatCodesQueryParams.from_dict(paged_vat_codes_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
