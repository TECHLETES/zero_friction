# CreateIncomingInvoiceRequest

Represents a request to create a new incoming invoice.  This DTO is used to register invoices received from suppliers or service providers.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**property_group_id** | **str** | The ID of the property group associated with this invoice. | [optional] 
**invoice_number** | **str** | The unique invoice number assigned by the supplier. | [optional] 
**invoice_date** | **datetime** | The date when the invoice was issued. | [optional] 
**description** | **str** | A description of the goods or services covered by the invoice. | [optional] 
**start_date** | **datetime** | The start date of the period covered by the invoice. | [optional] 
**end_date** | **datetime** | The end date of the period covered by the invoice. | [optional] 
**total_amount_excl_vat** | **float** | The total amount excluding VAT. | [optional] 
**total_amount_incl_vat** | **float** | The total amount including VAT. | [optional] 

## Example

```python
from billing_client.models.create_incoming_invoice_request import CreateIncomingInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateIncomingInvoiceRequest from a JSON string
create_incoming_invoice_request_instance = CreateIncomingInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(CreateIncomingInvoiceRequest.to_json())

# convert the object into a dict
create_incoming_invoice_request_dict = create_incoming_invoice_request_instance.to_dict()
# create an instance of CreateIncomingInvoiceRequest from a dict
create_incoming_invoice_request_from_dict = CreateIncomingInvoiceRequest.from_dict(create_incoming_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


