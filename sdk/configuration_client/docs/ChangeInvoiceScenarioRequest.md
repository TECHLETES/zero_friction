# ChangeInvoiceScenarioRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**pdf_template** | [**InvoicePdfTemplateRequest**](InvoicePdfTemplateRequest.md) |  | [optional] 
**email_template** | [**InvoiceEmailTemplateRequest**](InvoiceEmailTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.change_invoice_scenario_request import ChangeInvoiceScenarioRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeInvoiceScenarioRequest from a JSON string
change_invoice_scenario_request_instance = ChangeInvoiceScenarioRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeInvoiceScenarioRequest.to_json())

# convert the object into a dict
change_invoice_scenario_request_dict = change_invoice_scenario_request_instance.to_dict()
# create an instance of ChangeInvoiceScenarioRequest from a dict
change_invoice_scenario_request_from_dict = ChangeInvoiceScenarioRequest.from_dict(change_invoice_scenario_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


