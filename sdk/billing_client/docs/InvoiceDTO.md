# InvoiceDTO

Represents an invoice in the billing system

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**invoice_num** | **str** | Invoice number | [optional] 
**sequence_number** | **int** | Sequential number of the invoice | [optional] 
**invoice_date** | **datetime** | Date when the invoice was created | [optional] 
**type** | [**InvoiceType**](InvoiceType.md) | Type of the invoice | [optional] 
**status** | [**InvoiceStatus**](InvoiceStatus.md) | Current status of the invoice | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) | Debtor information for the invoice | [optional] 
**contract_id** | **str** | Identifier of the associated contract | [optional] 
**contract_number** | **str** | Contract number | [optional] 
**note_to_customer** | **str** | Note to be displayed to the customer | [optional] 
**external_reference** | **str** | External reference for the invoice | [optional] 
**due_date** | **datetime** | Date when the invoice is due for payment | [optional] 
**period_start_date_time** | **datetime** | Start date and time of the billing period | [optional] 
**period_end_date_time** | **datetime** | End date and time of the billing period | [optional] 
**lines** | [**List[InvoiceLineDTO]**](InvoiceLineDTO.md) | List of invoice lines | [optional] 
**remaining_invoice_amount** | **float** | Remaining amount to be paid on the invoice | [optional] 
**total_amount_incl_vat** | **float** | Total invoice amount including VAT | [optional] 
**total_amount_excl_vat** | **float** | Total invoice amount excluding VAT | [optional] 
**payment_details** | [**PaymentDetailsDTO**](PaymentDetailsDTO.md) | Payment details for the invoice | [optional] 
**attachment_id** | **str** | Identifier of the associated attachment | [optional] 
**credited_by_invoice_id** | **str** | Identifier of the invoice that credited this invoice | [optional] 
**credited_invoice_id** | **str** | Identifier of the invoice that was credited by this invoice | [optional] 
**billing_completeness_id** | **str** | Identifier of the associated billing completeness record | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of associated property groups | [optional] 
**product** | [**ProductReferenceDTO**](ProductReferenceDTO.md) | Associated product reference | [optional] 
**company_bank_account_id** | **str** | Identifier of the company&#39;s bank account | [optional] 
**consumption_calculation_inputs** | [**List[ConsumptionCalculationInputDTO]**](ConsumptionCalculationInputDTO.md) | List of consumption calculation inputs | [optional] 
**collection_details** | [**CollectionCaseDetailsDTO**](CollectionCaseDetailsDTO.md) | Collection case details | [optional] 
**sent** | [**SentStatus**](SentStatus.md) | Status of invoice sending | [optional] 
**failure_reason_code** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) | Localized error code for any failure | [optional] 
**failure_details** | **str** | Detailed failure information | [optional] 
**supports_external_printing** | **bool** | Indicates if the document can be printed externally | [optional] 
**export_status** | [**ExportStatus**](ExportStatus.md) | Status of invoice export | [optional] 
**new_advance_amount_excl_vat** | **float** | New advance amount excluding VAT (obsolete, use AdvanceCalculationDetails) | [optional] [readonly] 
**new_advance_amount_incl_vat** | **float** | New advance amount including VAT (obsolete, use AdvanceCalculationDetails) | [optional] [readonly] 
**advance_calculation_details** | [**AdvanceCalculationDetailsDTO**](AdvanceCalculationDetailsDTO.md) | Details of advance payment calculations | [optional] 
**ubl_attachment_details** | [**InvoiceUBLAttachmentDetailsDTO**](InvoiceUBLAttachmentDetailsDTO.md) | Details of UBL attachment | [optional] 

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


