# CreateInvoiceLinesRequest

Represents a line item in an invoice.  This DTO contains the details of individual items or services being billed.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**quantity** | **float** | The quantity of the item or service. | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) | The unit of measure for the quantity (e.g., pieces, hours, etc.). | [optional] 
**billing_item_id** | **str** | The unique identifier of the billing item. | [optional] 
**unit_price** | **float** | The price per unit of the item or service. | [optional] 
**amount_incl_vat** | **float** | The total amount including VAT for this line item. | [optional] 
**amount_excl_vat** | **float** | The total amount excluding VAT for this line item. | [optional] 
**line_type** | [**InvoiceLineType**](InvoiceLineType.md) | The type of line item (e.g., product, service, etc.). | [optional] 
**service_location_id** | **str** | The unique identifier of the service location. | [optional] 
**start_date_time** | **datetime** | The start date and time of the service period. | [optional] 
**end_date_time** | **datetime** | The end date and time of the service period. | [optional] 
**tax_code_id** | **str** | The unique identifier of the tax code applied to this line item. | [optional] 
**description** | **str** | A description of the line item. | [optional] 

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


