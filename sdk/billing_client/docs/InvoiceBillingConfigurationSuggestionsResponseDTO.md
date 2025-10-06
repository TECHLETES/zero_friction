# InvoiceBillingConfigurationSuggestionsResponseDTO

Represents suggested billing configuration settings for an invoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) | Suggested frequency for advance payments | [optional] 
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) | Suggested frequency for invoice generation | [optional] 
**payment_terms_id** | **str** | Identifier of the suggested payment terms | [optional] 
**message** | [**LocalisedSystemMessageDTO**](LocalisedSystemMessageDTO.md) | Localized system message with additional information | [optional] 
**invoice_month** | **int** | Suggested month for invoice generation (1-12) | [optional] 
**invoice_day** | **int** | Suggested day of the month for invoice generation (1-31) | [optional] 
**iban** | **str** | Suggested IBAN for payments | [optional] 
**company_bank_account_id** | **str** | Identifier of the suggested company bank account | [optional] 

## Example

```python
from billing_client.models.invoice_billing_configuration_suggestions_response_dto import InvoiceBillingConfigurationSuggestionsResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceBillingConfigurationSuggestionsResponseDTO from a JSON string
invoice_billing_configuration_suggestions_response_dto_instance = InvoiceBillingConfigurationSuggestionsResponseDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceBillingConfigurationSuggestionsResponseDTO.to_json())

# convert the object into a dict
invoice_billing_configuration_suggestions_response_dto_dict = invoice_billing_configuration_suggestions_response_dto_instance.to_dict()
# create an instance of InvoiceBillingConfigurationSuggestionsResponseDTO from a dict
invoice_billing_configuration_suggestions_response_dto_from_dict = InvoiceBillingConfigurationSuggestionsResponseDTO.from_dict(invoice_billing_configuration_suggestions_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


