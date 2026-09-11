# GetEstimatedInvoicesQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**overlapping_period_start_date_time** | **datetime** |  | [optional] 
**overlapping_period_end_date_time** | **datetime** |  | [optional] 
**apply_filters_over_included_ids** | **bool** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from billing_client.models.get_estimated_invoices_query_params import GetEstimatedInvoicesQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetEstimatedInvoicesQueryParams from a JSON string
get_estimated_invoices_query_params_instance = GetEstimatedInvoicesQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetEstimatedInvoicesQueryParams.to_json())

# convert the object into a dict
get_estimated_invoices_query_params_dict = get_estimated_invoices_query_params_instance.to_dict()
# create an instance of GetEstimatedInvoicesQueryParams from a dict
get_estimated_invoices_query_params_from_dict = GetEstimatedInvoicesQueryParams.from_dict(get_estimated_invoices_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


