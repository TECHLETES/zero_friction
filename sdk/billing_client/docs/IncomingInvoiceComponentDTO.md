# IncomingInvoiceComponentDTO

Represents a required incoming invoice component for a property group billing configuration.  This DTO specifies which components are required and whether they are optional.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The unique identifier of the incoming invoice component. | [optional] 
**optional** | **bool** | Indicates whether this component is optional. | [optional] 

## Example

```python
from billing_client.models.incoming_invoice_component_dto import IncomingInvoiceComponentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingInvoiceComponentDTO from a JSON string
incoming_invoice_component_dto_instance = IncomingInvoiceComponentDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingInvoiceComponentDTO.to_json())

# convert the object into a dict
incoming_invoice_component_dto_dict = incoming_invoice_component_dto_instance.to_dict()
# create an instance of IncomingInvoiceComponentDTO from a dict
incoming_invoice_component_dto_from_dict = IncomingInvoiceComponentDTO.from_dict(incoming_invoice_component_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


