# InvoiceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_num** | **str** |  | [optional] 
**sequence_number** | **int** |  | [optional] 
**invoice_date** | **datetime** |  | [optional] 
**type** | [**InvoiceType**](InvoiceType.md) |  | [optional] 
**status** | [**InvoiceStatus**](InvoiceStatus.md) |  | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional] 
**contract_id** | **str** |  | [optional] 
**contract_number** | **str** |  | [optional] 
**note_to_customer** | **str** |  | [optional] 
**external_reference** | **str** |  | [optional] 
**due_date** | **datetime** |  | [optional] 
**period_start_date_time** | **datetime** |  | [optional] 
**period_end_date_time** | **datetime** |  | [optional] 
**lines** | [**List[InvoiceLineDTO]**](InvoiceLineDTO.md) |  | [optional] 
**remaining_invoice_amount** | **float** |  | [optional] 
**total_amount_incl_vat** | **float** |  | [optional] 
**total_amount_excl_vat** | **float** |  | [optional] 
**payment_details** | [**PaymentDetailsDTO**](PaymentDetailsDTO.md) |  | [optional] 
**attachment_id** | **str** |  | [optional] 
**credited_by_invoice_id** | **str** |  | [optional] 
**credited_invoice_id** | **str** |  | [optional] 
**billing_completeness_id** | **str** |  | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional] 
**product** | [**ProductReferenceDTO**](ProductReferenceDTO.md) |  | [optional] 
**company_bank_account_id** | **str** |  | [optional] 
**consumption_calculation_inputs** | [**List[ConsumptionCalculationInputDTO]**](ConsumptionCalculationInputDTO.md) |  | [optional] 
**collection_details** | [**CollectionCaseDetailsDTO**](CollectionCaseDetailsDTO.md) |  | [optional] 
**payment_plan_details** | [**PaymentPlanDetailsDTO**](PaymentPlanDetailsDTO.md) |  | [optional] 
**sent** | [**SentStatus**](SentStatus.md) |  | [optional] 
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) |  | [optional] 
**failure_details** | **str** |  | [optional] 
**supports_external_printing** | **bool** |  | [optional] 
**export_status** | [**ExportStatus**](ExportStatus.md) |  | [optional] 
**new_advance_amount_excl_vat** | **float** |  | [optional] 
**new_advance_amount_incl_vat** | **float** |  | [optional] 
**advance_calculation_details** | [**AdvanceCalculationDetailsDTO**](AdvanceCalculationDetailsDTO.md) |  | [optional] 
**ubl_attachment_details** | [**InvoiceUBLAttachmentDetailsDTO**](InvoiceUBLAttachmentDetailsDTO.md) |  | [optional] 
**validation_result** | [**InvoiceValidationResultDTO**](InvoiceValidationResultDTO.md) |  | [optional] 
**auto_approved** | **bool** |  | [optional] 
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
from billing_client.models.invoice_dto import InvoiceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceDTO from a JSON string
invoice_dto_instance = InvoiceDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceDTO.to_json())

# convert the object into a dict
invoice_dto_dict = invoice_dto_instance.to_dict()
# create an instance of InvoiceDTO from a dict
invoice_dto_from_dict = InvoiceDTO.from_dict(invoice_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


