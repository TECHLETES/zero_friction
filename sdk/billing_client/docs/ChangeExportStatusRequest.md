# ChangeExportStatusRequest

Represents a request to change the export status of an invoice.  This DTO is used to update the export status of a single invoice.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**export_status** | [**ExportStatus**](ExportStatus.md) | The new export status to set for the invoice. | [optional] 

## Example

```python
from billing_client.models.change_export_status_request import ChangeExportStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeExportStatusRequest from a JSON string
change_export_status_request_instance = ChangeExportStatusRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeExportStatusRequest.to_json())

# convert the object into a dict
change_export_status_request_dict = change_export_status_request_instance.to_dict()
# create an instance of ChangeExportStatusRequest from a dict
change_export_status_request_from_dict = ChangeExportStatusRequest.from_dict(change_export_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


