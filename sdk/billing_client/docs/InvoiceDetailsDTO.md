# InvoiceDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  | [optional] 
**first_invoice_start_date_time** | **datetime** |  | [optional] 
**first_invoice_end_date_time** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.invoice_details_dto import InvoiceDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceDetailsDTO from a JSON string
invoice_details_dto_instance = InvoiceDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceDetailsDTO.to_json())

# convert the object into a dict
invoice_details_dto_dict = invoice_details_dto_instance.to_dict()
# create an instance of InvoiceDetailsDTO from a dict
invoice_details_dto_from_dict = InvoiceDetailsDTO.from_dict(invoice_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


