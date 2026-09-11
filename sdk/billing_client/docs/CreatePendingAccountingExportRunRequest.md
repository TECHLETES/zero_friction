# CreatePendingAccountingExportRunRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_id** | **str** |  |
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**mark_as_exported** | **bool** |  | [optional]

## Example

```python
from billing_client.models.create_pending_accounting_export_run_request import CreatePendingAccountingExportRunRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePendingAccountingExportRunRequest from a JSON string
create_pending_accounting_export_run_request_instance = CreatePendingAccountingExportRunRequest.from_json(json)
# print the JSON string representation of the object
print(CreatePendingAccountingExportRunRequest.to_json())

# convert the object into a dict
create_pending_accounting_export_run_request_dict = create_pending_accounting_export_run_request_instance.to_dict()
# create an instance of CreatePendingAccountingExportRunRequest from a dict
create_pending_accounting_export_run_request_from_dict = CreatePendingAccountingExportRunRequest.from_dict(create_pending_accounting_export_run_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
