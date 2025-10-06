# InvoiceLineDTO

Represents a line item on an invoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_id** | **str** | Identifier of the billing item | [optional] 
**billing_tariff_id** | **str** | Identifier of the billing tariff | [optional] 
**description** | **str** | Description of the line item | [optional] 
**amount_excl_vat** | **float** | Amount excluding VAT | [optional] 
**amount_incl_vat** | **float** | Amount including VAT | [optional] 
**vat** | **float** | VAT amount | [optional] 
**quantity** | **float** | Quantity of items | [optional] 
**raw_quantity** | **float** | Raw quantity before any adjustments | [optional] 
**unit_price** | **float** | Price per unit | [optional] 
**start_date_time** | **datetime** | Start date and time of the line item | [optional] 
**end_date_time** | **datetime** | End date and time of the line item | [optional] 
**tax_code_id** | **str** | Identifier of the tax code | [optional] 
**tax_rate** | **float** | Tax rate applied | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) | Unit of measure for the quantity | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) | Type of utility being billed | [optional] 
**line_type** | [**InvoiceLineType**](InvoiceLineType.md) | Type of the line item | [optional] 
**consumption_based** | **bool** | Indicates if the line item is based on consumption | [optional] 
**service_location_id** | **str** | Identifier of the service location | [optional] 
**original_invoice_id** | **str** | Identifier of the original invoice | [optional] 
**sort_order** | **int** | Sort order of the line item | [optional] 
**id** | **str** | Unique identifier of the line item | [optional] 

## Example

```python
from billing_client.models.invoice_line_dto import InvoiceLineDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceLineDTO from a JSON string
invoice_line_dto_instance = InvoiceLineDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceLineDTO.to_json())

# convert the object into a dict
invoice_line_dto_dict = invoice_line_dto_instance.to_dict()
# create an instance of InvoiceLineDTO from a dict
invoice_line_dto_from_dict = InvoiceLineDTO.from_dict(invoice_line_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


