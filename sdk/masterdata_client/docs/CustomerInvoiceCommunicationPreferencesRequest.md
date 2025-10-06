# CustomerInvoiceCommunicationPreferencesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional] 
**communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 

## Example

```python
from masterdata_client.models.customer_invoice_communication_preferences_request import CustomerInvoiceCommunicationPreferencesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerInvoiceCommunicationPreferencesRequest from a JSON string
customer_invoice_communication_preferences_request_instance = CustomerInvoiceCommunicationPreferencesRequest.from_json(json)
# print the JSON string representation of the object
print(CustomerInvoiceCommunicationPreferencesRequest.to_json())

# convert the object into a dict
customer_invoice_communication_preferences_request_dict = customer_invoice_communication_preferences_request_instance.to_dict()
# create an instance of CustomerInvoiceCommunicationPreferencesRequest from a dict
customer_invoice_communication_preferences_request_from_dict = CustomerInvoiceCommunicationPreferencesRequest.from_dict(customer_invoice_communication_preferences_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


