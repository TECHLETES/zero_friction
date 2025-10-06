# RequiredIncomingInvoiceComponentRequestDetails

Represents details for a required incoming invoice component.  This DTO is used to specify which invoice components are required and whether they are optional.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The ID of the incoming invoice component. | [optional] 
**optional** | **bool** | Indicates whether this component is optional in the billing configuration. | [optional] 

## Example

```python
from billing_client.models.required_incoming_invoice_component_request_details import RequiredIncomingInvoiceComponentRequestDetails

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredIncomingInvoiceComponentRequestDetails from a JSON string
required_incoming_invoice_component_request_details_instance = RequiredIncomingInvoiceComponentRequestDetails.from_json(json)
# print the JSON string representation of the object
print(RequiredIncomingInvoiceComponentRequestDetails.to_json())

# convert the object into a dict
required_incoming_invoice_component_request_details_dict = required_incoming_invoice_component_request_details_instance.to_dict()
# create an instance of RequiredIncomingInvoiceComponentRequestDetails from a dict
required_incoming_invoice_component_request_details_from_dict = RequiredIncomingInvoiceComponentRequestDetails.from_dict(required_incoming_invoice_component_request_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


