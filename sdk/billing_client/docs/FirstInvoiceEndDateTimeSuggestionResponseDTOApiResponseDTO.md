# FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**FirstInvoiceEndDateTimeSuggestionResponseDTO**](FirstInvoiceEndDateTimeSuggestionResponseDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.first_invoice_end_date_time_suggestion_response_dto_api_response_dto import FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO from a JSON string
first_invoice_end_date_time_suggestion_response_dto_api_response_dto_instance = FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO.to_json())

# convert the object into a dict
first_invoice_end_date_time_suggestion_response_dto_api_response_dto_dict = first_invoice_end_date_time_suggestion_response_dto_api_response_dto_instance.to_dict()
# create an instance of FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO from a dict
first_invoice_end_date_time_suggestion_response_dto_api_response_dto_from_dict = FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO.from_dict(first_invoice_end_date_time_suggestion_response_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


