# InvoiceBillingConfigurationsSuggestionsRequest

Represents a request to get suggested invoice billing configurations.  This DTO is used to retrieve recommended billing configurations based on service locations and contract.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_ids** | **List[str]** | List of service location IDs for which to get billing configuration suggestions. | [optional] 
**contract_id** | **str** | The ID of the contract associated with the billing configurations. | [optional] 

## Example

```python
from billing_client.models.invoice_billing_configurations_suggestions_request import InvoiceBillingConfigurationsSuggestionsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceBillingConfigurationsSuggestionsRequest from a JSON string
invoice_billing_configurations_suggestions_request_instance = InvoiceBillingConfigurationsSuggestionsRequest.from_json(json)
# print the JSON string representation of the object
print(InvoiceBillingConfigurationsSuggestionsRequest.to_json())

# convert the object into a dict
invoice_billing_configurations_suggestions_request_dict = invoice_billing_configurations_suggestions_request_instance.to_dict()
# create an instance of InvoiceBillingConfigurationsSuggestionsRequest from a dict
invoice_billing_configurations_suggestions_request_from_dict = InvoiceBillingConfigurationsSuggestionsRequest.from_dict(invoice_billing_configurations_suggestions_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


