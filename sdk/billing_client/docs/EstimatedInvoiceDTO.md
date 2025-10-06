# EstimatedInvoiceDTO

Represents an estimated invoice for a customer.  This DTO contains information about the estimated charges, periods, and accuracy of the estimation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** | The unique identifier of the customer. | [optional] 
**contract_id** | **str** | The unique identifier of the contract. | [optional] 
**original_billing_completeness_id** | **str** | The unique identifier of the original billing completeness record. | [optional] 
**product** | [**ProductReferenceDTO**](ProductReferenceDTO.md) | Reference to the product associated with this estimated invoice. | [optional] 
**calculation_date** | **datetime** | The date and time when this estimation was calculated. | [optional] 
**period_end_date_time** | **datetime** | The end date and time of the billing period. | [optional] 
**period_start_date_time** | **datetime** | The start date and time of the billing period. | [optional] 
**total_amount_incl_vat** | **float** | The total amount including VAT. | [optional] 
**total_amount_excl_vat** | **float** | The total amount excluding VAT. | [optional] 
**total_vat_amount** | **float** | The total VAT amount. | [optional] 
**remaining_amount** | **float** | The remaining amount to be billed. | [optional] 
**lines** | [**List[EstimatedInvoiceLineDTO]**](EstimatedInvoiceLineDTO.md) | List of line items in the estimated invoice. | [optional] 
**advances** | [**List[EstimatedAdvancePeriodDTO]**](EstimatedAdvancePeriodDTO.md) | List of advance periods associated with this estimated invoice. | [optional] 
**accuracy** | [**Level**](Level.md) | The accuracy level of this estimation. | [optional] 

## Example

```python
from billing_client.models.estimated_invoice_dto import EstimatedInvoiceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedInvoiceDTO from a JSON string
estimated_invoice_dto_instance = EstimatedInvoiceDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedInvoiceDTO.to_json())

# convert the object into a dict
estimated_invoice_dto_dict = estimated_invoice_dto_instance.to_dict()
# create an instance of EstimatedInvoiceDTO from a dict
estimated_invoice_dto_from_dict = EstimatedInvoiceDTO.from_dict(estimated_invoice_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


