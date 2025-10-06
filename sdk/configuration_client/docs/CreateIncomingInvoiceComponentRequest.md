# CreateIncomingInvoiceComponentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.create_incoming_invoice_component_request import CreateIncomingInvoiceComponentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateIncomingInvoiceComponentRequest from a JSON string
create_incoming_invoice_component_request_instance = CreateIncomingInvoiceComponentRequest.from_json(json)
# print the JSON string representation of the object
print(CreateIncomingInvoiceComponentRequest.to_json())

# convert the object into a dict
create_incoming_invoice_component_request_dict = create_incoming_invoice_component_request_instance.to_dict()
# create an instance of CreateIncomingInvoiceComponentRequest from a dict
create_incoming_invoice_component_request_from_dict = CreateIncomingInvoiceComponentRequest.from_dict(create_incoming_invoice_component_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


