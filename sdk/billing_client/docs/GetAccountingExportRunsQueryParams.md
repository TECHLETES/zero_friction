# GetAccountingExportRunsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_id** | **str** |  | [optional] 
**provider_type** | [**AccountingExportProviderType**](AccountingExportProviderType.md) |  | [optional] 
**statuses** | [**List[AccountingExportRunStatus]**](AccountingExportRunStatus.md) |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from billing_client.models.get_accounting_export_runs_query_params import GetAccountingExportRunsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetAccountingExportRunsQueryParams from a JSON string
get_accounting_export_runs_query_params_instance = GetAccountingExportRunsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetAccountingExportRunsQueryParams.to_json())

# convert the object into a dict
get_accounting_export_runs_query_params_dict = get_accounting_export_runs_query_params_instance.to_dict()
# create an instance of GetAccountingExportRunsQueryParams from a dict
get_accounting_export_runs_query_params_from_dict = GetAccountingExportRunsQueryParams.from_dict(get_accounting_export_runs_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


