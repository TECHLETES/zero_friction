# EstimatedInvoiceLineDTO

Base class for estimated invoice line items.  This abstract class defines the common properties for all types of estimated invoice lines.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**calculation_type** | [**BillingCalculationType**](BillingCalculationType.md) | The type of calculation used for this line item. | [optional] 
**billing_item_reference** | [**BillingItemReference**](BillingItemReference.md) | Reference to the billing item associated with this line. | [optional] 
**start_date_time** | **datetime** | The start date and time of the billing period. | [optional] 
**end_date_time** | **datetime** | The end date and time of the billing period. | [optional] 
**amount_excl_vat** | **float** | The amount excluding VAT. | [optional] 
**vat** | **float** | The VAT amount. | [optional] 
**amount_incl_vat** | **float** | The amount including VAT. | [optional] 
**quantity** | **float** | The quantity being billed. | [optional] 
**raw_quantity** | **float** | The raw quantity before any adjustments. | [optional] 
**unit_price** | **float** | The unit price for this line item. | [optional] 
**vat_rate** | **float** | The VAT rate applied to this line item. | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) | The unit of measure for the quantity. | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) | The type of utility being billed. | [optional] 
**service_location_id** | **str** | The unique identifier of the service location. | [optional] 
**billing_tariff_accuracy** | [**PeriodForEntityDTO**](PeriodForEntityDTO.md) | The accuracy period information for the billing tariff. | [optional] 
**cost_component_accuracies** | [**List[PeriodForEntityDTO]**](PeriodForEntityDTO.md) | List of accuracy periods for cost components. | [optional] 
**tax_accuracy** | [**PeriodForEntityDTO**](PeriodForEntityDTO.md) | The accuracy period information for tax calculations. | [optional] 
**accuracy** | [**Level**](Level.md) | The overall accuracy level of this line item. | [optional] 
**quantity_accuracy** | [**Level**](Level.md) | The accuracy level of the quantity calculation. | [optional] 

## Example

```python
from billing_client.models.estimated_invoice_line_dto import EstimatedInvoiceLineDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedInvoiceLineDTO from a JSON string
estimated_invoice_line_dto_instance = EstimatedInvoiceLineDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedInvoiceLineDTO.to_json())

# convert the object into a dict
estimated_invoice_line_dto_dict = estimated_invoice_line_dto_instance.to_dict()
# create an instance of EstimatedInvoiceLineDTO from a dict
estimated_invoice_line_dto_from_dict = EstimatedInvoiceLineDTO.from_dict(estimated_invoice_line_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


