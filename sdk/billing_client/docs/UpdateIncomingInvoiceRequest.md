# UpdateIncomingInvoiceRequest

Represents a request to update an existing incoming invoice.  This DTO is used to modify the details of a previously registered invoice.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_date** | **datetime** | The updated date when the invoice was issued. | [optional] 
**description** | **str** | The updated description of the goods or services covered by the invoice. | [optional] 
**start_date** | **datetime** | The updated start date of the period covered by the invoice. | [optional] 
**end_date** | **datetime** | The updated end date of the period covered by the invoice. | [optional] 
**total_amount_excl_vat** | **float** | The updated total amount excluding VAT. | [optional] 
**total_amount_incl_vat** | **float** | The updated total amount including VAT. | [optional] 

## Example

```python
from billing_client.models.update_incoming_invoice_request import UpdateIncomingInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateIncomingInvoiceRequest from a JSON string
update_incoming_invoice_request_instance = UpdateIncomingInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateIncomingInvoiceRequest.to_json())

# convert the object into a dict
update_incoming_invoice_request_dict = update_incoming_invoice_request_instance.to_dict()
# create an instance of UpdateIncomingInvoiceRequest from a dict
update_incoming_invoice_request_from_dict = UpdateIncomingInvoiceRequest.from_dict(update_incoming_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


