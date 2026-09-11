# BaseInvoiceExportFormatDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  |
**date_time_format** | **str** |  | [default to 'dd.MM.yyyy']
**number_thousands_seperator** | **str** |  | [default to ' ']
**number_decimal_seperator** | **str** |  | [default to ',']

## Example

```python
from configuration_client.models.base_invoice_export_format_dto import BaseInvoiceExportFormatDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseInvoiceExportFormatDTO from a JSON string
base_invoice_export_format_dto_instance = BaseInvoiceExportFormatDTO.from_json(json)
# print the JSON string representation of the object
print(BaseInvoiceExportFormatDTO.to_json())

# convert the object into a dict
base_invoice_export_format_dto_dict = base_invoice_export_format_dto_instance.to_dict()
# create an instance of BaseInvoiceExportFormatDTO from a dict
base_invoice_export_format_dto_from_dict = BaseInvoiceExportFormatDTO.from_dict(base_invoice_export_format_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
