# BulkChangeExportStatusRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**export_status** | [**ExportStatus**](ExportStatus.md) |  | [optional] 

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


