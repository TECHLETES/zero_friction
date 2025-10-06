# CreateInvoiceRequest

Represents a request to create a new invoice.  This DTO contains all the necessary information to create a complete invoice including header details and line items.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_num** | **str** | The unique invoice number assigned to this invoice. | [optional] 
**status** | [**InvoiceStatus**](InvoiceStatus.md) | The current status of the invoice. | [optional] 
**invoice_date** | **datetime** | The date when the invoice was created. | [optional] 
**invoice_type** | [**InvoiceType**](InvoiceType.md) | The type of invoice (e.g., regular, credit note, etc.). | [optional] 
**remaining_invoice_amount** | **float** | The remaining amount to be paid on this invoice. | [optional] 
**total_invoice_amount_excl_vat** | **float** | The total invoice amount excluding VAT. | [optional] 
**total_invoice_amount_incl_vat** | **float** | The total invoice amount including VAT. | [optional] 
**contract_id** | **str** | The unique identifier of the associated contract. | [optional] 
**credited_invoice_id** | **str** | The ID of the invoice being credited (if this is a credit note). | [optional] 
**contract_number** | **str** | The contract number associated with this invoice. | [optional] 
**customer_id** | **str** | The unique identifier of the customer. | [optional] 
**company_bank_account_id** | **str** | The ID of the company&#39;s bank account for receiving payments. | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with this invoice. | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) | The method of payment for this invoice. | [optional] 
**payment_reference** | **str** | The payment reference number for tracking payments. | [optional] 
**external_reference** | **str** | An external reference number for integration with other systems. | [optional] 
**period_start_date_time** | **datetime** | The start date and time of the billing period. | [optional] 
**period_end_date_time** | **datetime** | The end date and time of the billing period. | [optional] 
**due_date** | **datetime** | The date when the invoice payment is due. | [optional] 
**note_to_customer** | **str** | Additional notes or comments for the customer. | [optional] 
**sent** | [**SentStatus**](SentStatus.md) | The current sent status of the invoice. | [optional] 
**lines** | [**List[CreateInvoiceLinesRequest]**](CreateInvoiceLinesRequest.md) | List of line items in the invoice. | [optional] 

## Example

```python
from billing_client.models.create_invoice_request import CreateInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateInvoiceRequest from a JSON string
create_invoice_request_instance = CreateInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(CreateInvoiceRequest.to_json())

# convert the object into a dict
create_invoice_request_dict = create_invoice_request_instance.to_dict()
# create an instance of CreateInvoiceRequest from a dict
create_invoice_request_from_dict = CreateInvoiceRequest.from_dict(create_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


