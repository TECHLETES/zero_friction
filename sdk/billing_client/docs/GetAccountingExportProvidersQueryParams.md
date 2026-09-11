# GetAccountingExportProvidersQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**statuses** | [**List[AccountingExportProviderStatus]**](AccountingExportProviderStatus.md) |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from billing_client.models.get_accounting_export_providers_query_params import GetAccountingExportProvidersQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetAccountingExportProvidersQueryParams from a JSON string
get_accounting_export_providers_query_params_instance = GetAccountingExportProvidersQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetAccountingExportProvidersQueryParams.to_json())

# convert the object into a dict
get_accounting_export_providers_query_params_dict = get_accounting_export_providers_query_params_instance.to_dict()
# create an instance of GetAccountingExportProvidersQueryParams from a dict
get_accounting_export_providers_query_params_from_dict = GetAccountingExportProvidersQueryParams.from_dict(get_accounting_export_providers_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


