# InvoiceProductConfigurationSuggestionsResponseDTO

Represents suggested product configuration settings for an invoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **str** | Identifier of the suggested product | [optional] 
**product_name** | **str** | Name of the suggested product | [optional] 
**cost_allocation_enabled** | **bool** | Indicates if cost allocation is enabled for the product | [optional] 
**message** | [**LocalisedSystemMessageDTO**](LocalisedSystemMessageDTO.md) | Localized system message with additional information | [optional] 

## Example

```python
from billing_client.models.invoice_product_configuration_suggestions_response_dto import InvoiceProductConfigurationSuggestionsResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceProductConfigurationSuggestionsResponseDTO from a JSON string
invoice_product_configuration_suggestions_response_dto_instance = InvoiceProductConfigurationSuggestionsResponseDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceProductConfigurationSuggestionsResponseDTO.to_json())

# convert the object into a dict
invoice_product_configuration_suggestions_response_dto_dict = invoice_product_configuration_suggestions_response_dto_instance.to_dict()
# create an instance of InvoiceProductConfigurationSuggestionsResponseDTO from a dict
invoice_product_configuration_suggestions_response_dto_from_dict = InvoiceProductConfigurationSuggestionsResponseDTO.from_dict(invoice_product_configuration_suggestions_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


