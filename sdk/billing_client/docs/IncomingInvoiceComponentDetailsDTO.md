# IncomingInvoiceComponentDetailsDTO

Represents detailed information about an incoming invoice component.  Contains the component's identifier, completion status, and associated values.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**incoming_invoice_component_id** | **str** | The unique identifier of the incoming invoice component. | [optional] 
**potentially_complete** | **bool** | Indicates whether all required values for this component are potentially present. | [optional] 
**values** | [**List[IncomingInvoiceComponentValueDTO]**](IncomingInvoiceComponentValueDTO.md) | List of values associated with this invoice component. | [optional] 

## Example

```python
from billing_client.models.incoming_invoice_component_details_dto import IncomingInvoiceComponentDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingInvoiceComponentDetailsDTO from a JSON string
incoming_invoice_component_details_dto_instance = IncomingInvoiceComponentDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingInvoiceComponentDetailsDTO.to_json())

# convert the object into a dict
incoming_invoice_component_details_dto_dict = incoming_invoice_component_details_dto_instance.to_dict()
# create an instance of IncomingInvoiceComponentDetailsDTO from a dict
incoming_invoice_component_details_dto_from_dict = IncomingInvoiceComponentDetailsDTO.from_dict(incoming_invoice_component_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


