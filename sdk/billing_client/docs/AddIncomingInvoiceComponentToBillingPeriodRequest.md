# AddIncomingInvoiceComponentToBillingPeriodRequest

Represents a request to add an incoming invoice component to a billing period.  This DTO is used to associate incoming invoice components with specific billing periods.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**incoming_invoice_component_id** | **str** | The ID of the incoming invoice component to be added. | [optional] 
**value** | **float** | The value to be allocated for this component in the billing period. | [optional] 
**incoming_invoice_id** | **str** | The ID of the incoming invoice associated with this component. | [optional] 

## Example

```python
from billing_client.models.add_incoming_invoice_component_to_billing_period_request import AddIncomingInvoiceComponentToBillingPeriodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddIncomingInvoiceComponentToBillingPeriodRequest from a JSON string
add_incoming_invoice_component_to_billing_period_request_instance = AddIncomingInvoiceComponentToBillingPeriodRequest.from_json(json)
# print the JSON string representation of the object
print(AddIncomingInvoiceComponentToBillingPeriodRequest.to_json())

# convert the object into a dict
add_incoming_invoice_component_to_billing_period_request_dict = add_incoming_invoice_component_to_billing_period_request_instance.to_dict()
# create an instance of AddIncomingInvoiceComponentToBillingPeriodRequest from a dict
add_incoming_invoice_component_to_billing_period_request_from_dict = AddIncomingInvoiceComponentToBillingPeriodRequest.from_dict(add_incoming_invoice_component_to_billing_period_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


