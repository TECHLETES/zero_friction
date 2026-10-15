# CreateInvoiceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_num** | **str** |  | 
**status** | [**InvoiceStatus**](InvoiceStatus.md) |  | 
**invoice_date** | **datetime** |  | 
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | 
**remaining_invoice_amount** | **float** |  | [optional] 
**total_invoice_amount_excl_vat** | **float** |  | 
**total_invoice_amount_incl_vat** | **float** |  | 
**billing_completeness_id** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**credited_invoice_id** | **str** |  | [optional] 
**contract_number** | **str** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**company_bank_account_id** | **str** |  | 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | 
**payment_reference** | **str** |  | [optional] 
**external_reference** | **str** |  | [optional] 
**period_start_date_time** | **datetime** |  | 
**period_end_date_time** | **datetime** |  | 
**due_date** | **datetime** |  | [optional] 
**note_to_customer** | **str** |  | [optional] 
**sent** | [**SentStatus**](SentStatus.md) |  | 
**lines** | [**List[CreateInvoiceLinesRequest]**](CreateInvoiceLinesRequest.md) |  | [optional] 
**disable_vat_calculation** | **bool** |  | [optional] 

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


