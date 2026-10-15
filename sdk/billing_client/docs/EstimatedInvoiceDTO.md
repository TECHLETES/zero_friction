# EstimatedInvoiceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional] 
**contract** | [**ContractReferenceDTO**](ContractReferenceDTO.md) |  | [optional] 
**original_billing_completeness_id** | **str** |  | [optional] 
**product** | [**ProductReferenceDTO**](ProductReferenceDTO.md) |  | [optional] 
**calculation_date** | **datetime** |  | [optional] 
**period_end_date_time** | **datetime** |  | [optional] 
**period_start_date_time** | **datetime** |  | [optional] 
**total_amount_incl_vat** | **float** |  | [optional] 
**total_amount_excl_vat** | **float** |  | [optional] 
**total_vat_amount** | **float** |  | [optional] 
**remaining_amount** | **float** |  | [optional] 
**lines** | [**List[EstimatedInvoiceLineDTO]**](EstimatedInvoiceLineDTO.md) |  | [optional] 
**advances** | [**List[EstimatedAdvancePeriodDTO]**](EstimatedAdvancePeriodDTO.md) |  | [optional] 
**accuracy** | [**Level**](Level.md) |  | [optional] 
**organisation_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

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


