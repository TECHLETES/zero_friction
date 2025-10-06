# IncomingInvoiceDTO

Represents an incoming invoice in the billing system.  This DTO contains information about the invoice, including its financial details and validity period.

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
**property_group_id** | **str** | The unique identifier of the property group associated with this invoice. | [optional] 
**invoice_number** | **str** | The unique invoice number assigned to this invoice. | [optional] 
**invoice_date** | **datetime** | The date when the invoice was issued. | [optional] 
**description** | **str** | A description or summary of the invoice contents. | [optional] 
**start_date** | **datetime** | The start date of the period covered by this invoice. | [optional] 
**end_date** | **datetime** | The end date of the period covered by this invoice. | [optional] 
**total_amount_excl_vat** | **float** | The total amount of the invoice excluding Value Added Tax (VAT). | [optional] 
**total_amount_incl_vat** | **float** | The total amount of the invoice including Value Added Tax (VAT). | [optional] 

## Example

```python
from billing_client.models.incoming_invoice_dto import IncomingInvoiceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingInvoiceDTO from a JSON string
incoming_invoice_dto_instance = IncomingInvoiceDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingInvoiceDTO.to_json())

# convert the object into a dict
incoming_invoice_dto_dict = incoming_invoice_dto_instance.to_dict()
# create an instance of IncomingInvoiceDTO from a dict
incoming_invoice_dto_from_dict = IncomingInvoiceDTO.from_dict(incoming_invoice_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


