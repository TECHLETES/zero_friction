# EstimatedInvoiceLineDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**consumption_origin_shares** | [**List[ConsumptionOriginShareDTO]**](ConsumptionOriginShareDTO.md) |  | [optional] 
**calculation_type** | [**BillingCalculationType**](BillingCalculationType.md) |  | [optional] 
**billing_item_reference** | [**BillingItemReference**](BillingItemReference.md) |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**amount_excl_vat** | **float** |  | [optional] 
**vat** | **float** |  | [optional] 
**amount_incl_vat** | **float** |  | [optional] 
**quantity** | **float** |  | [optional] 
**raw_quantity** | **float** |  | [optional] 
**unit_price** | **float** |  | [optional] 
**vat_rate** | **float** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**service_location_id** | **str** |  | [optional] 
**billing_tariff_accuracy** | [**PeriodForEntityDTO**](PeriodForEntityDTO.md) |  | [optional] 
**cost_component_accuracies** | [**List[PeriodForEntityDTO]**](PeriodForEntityDTO.md) |  | [optional] 
**tax_accuracy** | [**PeriodForEntityDTO**](PeriodForEntityDTO.md) |  | [optional] 
**accuracy** | [**Level**](Level.md) |  | [optional] 
**quantity_accuracy** | [**Level**](Level.md) |  | [optional] 
**custom_entity_property_entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**custom_entity_property_entity_subject_id** | **str** |  | [optional] 
**custom_entity_property_accuracy** | [**PeriodForEntityDTO**](PeriodForEntityDTO.md) |  | [optional] 

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


