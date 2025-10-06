# InvoiceProductConfigurationsSuggestionsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_ids** | **List[str]** |  | [optional] 
**contract_id** | **str** |  | [optional] 

## Example

```python
from billing_client.models.invoice_product_configurations_suggestions_request import InvoiceProductConfigurationsSuggestionsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceProductConfigurationsSuggestionsRequest from a JSON string
invoice_product_configurations_suggestions_request_instance = InvoiceProductConfigurationsSuggestionsRequest.from_json(json)
# print the JSON string representation of the object
print(InvoiceProductConfigurationsSuggestionsRequest.to_json())

# convert the object into a dict
invoice_product_configurations_suggestions_request_dict = invoice_product_configurations_suggestions_request_instance.to_dict()
# create an instance of InvoiceProductConfigurationsSuggestionsRequest from a dict
invoice_product_configurations_suggestions_request_from_dict = InvoiceProductConfigurationsSuggestionsRequest.from_dict(invoice_product_configurations_suggestions_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


