# InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**InvoiceBillingConfigurationSuggestionsResponseDTO**](InvoiceBillingConfigurationSuggestionsResponseDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.invoice_billing_configuration_suggestions_response_dto_api_response_dto import InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO from a JSON string
invoice_billing_configuration_suggestions_response_dto_api_response_dto_instance = InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO.to_json())

# convert the object into a dict
invoice_billing_configuration_suggestions_response_dto_api_response_dto_dict = invoice_billing_configuration_suggestions_response_dto_api_response_dto_instance.to_dict()
# create an instance of InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO from a dict
invoice_billing_configuration_suggestions_response_dto_api_response_dto_from_dict = InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO.from_dict(invoice_billing_configuration_suggestions_response_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


