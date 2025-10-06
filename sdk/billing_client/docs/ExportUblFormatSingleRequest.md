# ExportUblFormatSingleRequest

Represents a request to export a single invoice in UBL format.  This DTO is used to export one invoice in UBL (Universal Business Language) format.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_id** | **str** | The ID of the invoice to be exported in UBL format. | [optional] 
**mark_as_exported** | **bool** | Indicates whether the exported invoice should be marked as exported in the system. | [optional] 

## Example

```python
from billing_client.models.export_ubl_format_single_request import ExportUblFormatSingleRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportUblFormatSingleRequest from a JSON string
export_ubl_format_single_request_instance = ExportUblFormatSingleRequest.from_json(json)
# print the JSON string representation of the object
print(ExportUblFormatSingleRequest.to_json())

# convert the object into a dict
export_ubl_format_single_request_dict = export_ubl_format_single_request_instance.to_dict()
# create an instance of ExportUblFormatSingleRequest from a dict
export_ubl_format_single_request_from_dict = ExportUblFormatSingleRequest.from_dict(export_ubl_format_single_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


