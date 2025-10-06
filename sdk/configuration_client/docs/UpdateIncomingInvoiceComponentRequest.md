# UpdateIncomingInvoiceComponentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.update_incoming_invoice_component_request import UpdateIncomingInvoiceComponentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateIncomingInvoiceComponentRequest from a JSON string
update_incoming_invoice_component_request_instance = UpdateIncomingInvoiceComponentRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateIncomingInvoiceComponentRequest.to_json())

# convert the object into a dict
update_incoming_invoice_component_request_dict = update_incoming_invoice_component_request_instance.to_dict()
# create an instance of UpdateIncomingInvoiceComponentRequest from a dict
update_incoming_invoice_component_request_from_dict = UpdateIncomingInvoiceComponentRequest.from_dict(update_incoming_invoice_component_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


