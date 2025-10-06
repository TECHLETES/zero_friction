# RequestInvoiceExportRequest

Represents a request to export invoices.  This DTO is used to initiate the export of invoices based on specified criteria and configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) | Query parameters to filter the invoices to be exported. | [optional] 
**quick_filter** | **str** | Quick filter string to filter invoices without using complex query parameters. | [optional] 
**configured_plugin_id** | **str** | The unique identifier of the configured export plugin to use for the export. | [optional] 
**mark_as_exported** | **bool** | Indicates whether the exported invoices should be marked as exported in the system. | [optional] 

## Example

```python
from billing_client.models.request_invoice_export_request import RequestInvoiceExportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RequestInvoiceExportRequest from a JSON string
request_invoice_export_request_instance = RequestInvoiceExportRequest.from_json(json)
# print the JSON string representation of the object
print(RequestInvoiceExportRequest.to_json())

# convert the object into a dict
request_invoice_export_request_dict = request_invoice_export_request_instance.to_dict()
# create an instance of RequestInvoiceExportRequest from a dict
request_invoice_export_request_from_dict = RequestInvoiceExportRequest.from_dict(request_invoice_export_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


