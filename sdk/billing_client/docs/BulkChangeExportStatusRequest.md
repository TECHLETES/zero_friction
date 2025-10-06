# BulkChangeExportStatusRequest

Represents a bulk request to change the export status of multiple invoices.  This DTO allows updating the export status of multiple invoices in a single operation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**export_status** | [**ExportStatus**](ExportStatus.md) | The new export status to set for the invoice. | [optional] 
**only_validate** | **bool** | Indicates if only validation should be performed without actually changing the export status.  When true, the system will only validate if the export status can be changed without making any changes. | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) | Query parameters to filter the invoices to be updated. | [optional] 
**quick_filter** | **str** | Quick filter string to filter invoices without using complex query parameters. | [optional] 

## Example

```python
from billing_client.models.bulk_change_export_status_request import BulkChangeExportStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkChangeExportStatusRequest from a JSON string
bulk_change_export_status_request_instance = BulkChangeExportStatusRequest.from_json(json)
# print the JSON string representation of the object
print(BulkChangeExportStatusRequest.to_json())

# convert the object into a dict
bulk_change_export_status_request_dict = bulk_change_export_status_request_instance.to_dict()
# create an instance of BulkChangeExportStatusRequest from a dict
bulk_change_export_status_request_from_dict = BulkChangeExportStatusRequest.from_dict(bulk_change_export_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


