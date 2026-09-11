# InvoiceLineDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_id** | **str** |  | [optional]
**billing_tariff_id** | **str** |  | [optional]
**time_of_use** | **str** |  | [optional]
**description** | **str** |  | [optional]
**amount_excl_vat** | **float** |  | [optional]
**amount_incl_vat** | **float** |  | [optional]
**vat** | **float** |  | [optional]
**quantity** | **float** |  | [optional]
**raw_quantity** | **float** |  | [optional]
**unit_price** | **float** |  | [optional]
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**tax_code_id** | **str** |  | [optional]
**tax_rate** | **float** |  | [optional]
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]
**line_type** | [**InvoiceLineType**](InvoiceLineType.md) |  | [optional]
**consumption_based** | **bool** |  | [optional]
**service_location_id** | **str** |  | [optional]
**original_invoice_id** | **str** |  | [optional]
**sort_order** | **int** |  | [optional]
**id** | **str** |  | [optional]

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
