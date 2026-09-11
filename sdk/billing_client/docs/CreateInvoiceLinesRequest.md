# CreateInvoiceLinesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **float** |  |
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  |
**billing_item_id** | **str** |  | [optional]
**unit_price** | **float** |  |
**amount_incl_vat** | **float** |  |
**amount_excl_vat** | **float** |  | [optional]
**line_type** | [**InvoiceLineType**](InvoiceLineType.md) |  |
**service_location_id** | **str** |  | [optional]
**start_date_time** | **datetime** |  |
**end_date_time** | **datetime** |  |
**tax_code_id** | **str** |  | [optional]
**description** | **str** |  |

## Example

```python
from billing_client.models.create_invoice_lines_request import CreateInvoiceLinesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateInvoiceLinesRequest from a JSON string
create_invoice_lines_request_instance = CreateInvoiceLinesRequest.from_json(json)
# print the JSON string representation of the object
print(CreateInvoiceLinesRequest.to_json())

# convert the object into a dict
create_invoice_lines_request_dict = create_invoice_lines_request_instance.to_dict()
# create an instance of CreateInvoiceLinesRequest from a dict
create_invoice_lines_request_from_dict = CreateInvoiceLinesRequest.from_dict(create_invoice_lines_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
