# ApiResponseDTOOfFirstInvoiceEndDateTimeSuggestionResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**FirstInvoiceEndDateTimeSuggestionResponseDTO**](FirstInvoiceEndDateTimeSuggestionResponseDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dtoof_first_invoice_end_date_time_suggestion_response_dto import ApiResponseDTOOfFirstInvoiceEndDateTimeSuggestionResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfFirstInvoiceEndDateTimeSuggestionResponseDTO from a JSON string
api_response_dtoof_first_invoice_end_date_time_suggestion_response_dto_instance = ApiResponseDTOOfFirstInvoiceEndDateTimeSuggestionResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfFirstInvoiceEndDateTimeSuggestionResponseDTO.to_json())

# convert the object into a dict
api_response_dtoof_first_invoice_end_date_time_suggestion_response_dto_dict = api_response_dtoof_first_invoice_end_date_time_suggestion_response_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfFirstInvoiceEndDateTimeSuggestionResponseDTO from a dict
api_response_dtoof_first_invoice_end_date_time_suggestion_response_dto_from_dict = ApiResponseDTOOfFirstInvoiceEndDateTimeSuggestionResponseDTO.from_dict(api_response_dtoof_first_invoice_end_date_time_suggestion_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


