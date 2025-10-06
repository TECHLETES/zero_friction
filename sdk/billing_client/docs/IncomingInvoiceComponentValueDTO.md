# IncomingInvoiceComponentValueDTO

Represents a specific value entry for an incoming invoice component.  Contains the value and its associated invoice information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The unique identifier of the value entry. | [optional] 
**value** | **float** | The numerical value of the invoice component. | [optional] 
**incoming_invoice_id** | **str** | The unique identifier of the associated incoming invoice. | [optional] 

## Example

```python
from billing_client.models.incoming_invoice_component_value_dto import IncomingInvoiceComponentValueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingInvoiceComponentValueDTO from a JSON string
incoming_invoice_component_value_dto_instance = IncomingInvoiceComponentValueDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingInvoiceComponentValueDTO.to_json())

# convert the object into a dict
incoming_invoice_component_value_dto_dict = incoming_invoice_component_value_dto_instance.to_dict()
# create an instance of IncomingInvoiceComponentValueDTO from a dict
incoming_invoice_component_value_dto_from_dict = IncomingInvoiceComponentValueDTO.from_dict(incoming_invoice_component_value_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


