# InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**InvoiceProductConfigurationSuggestionsResponseDTO**](InvoiceProductConfigurationSuggestionsResponseDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.invoice_product_configuration_suggestions_response_dto_api_response_dto import InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO from a JSON string
invoice_product_configuration_suggestions_response_dto_api_response_dto_instance = InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO.to_json())

# convert the object into a dict
invoice_product_configuration_suggestions_response_dto_api_response_dto_dict = invoice_product_configuration_suggestions_response_dto_api_response_dto_instance.to_dict()
# create an instance of InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO from a dict
invoice_product_configuration_suggestions_response_dto_api_response_dto_from_dict = InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO.from_dict(invoice_product_configuration_suggestions_response_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


