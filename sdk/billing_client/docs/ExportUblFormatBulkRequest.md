# ExportUblFormatBulkRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_ids** | **List[str]** |  | 
**mark_as_exported** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.export_ubl_format_bulk_request import ExportUblFormatBulkRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportUblFormatBulkRequest from a JSON string
export_ubl_format_bulk_request_instance = ExportUblFormatBulkRequest.from_json(json)
# print the JSON string representation of the object
print(ExportUblFormatBulkRequest.to_json())

# convert the object into a dict
export_ubl_format_bulk_request_dict = export_ubl_format_bulk_request_instance.to_dict()
# create an instance of ExportUblFormatBulkRequest from a dict
export_ubl_format_bulk_request_from_dict = ExportUblFormatBulkRequest.from_dict(export_ubl_format_bulk_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


