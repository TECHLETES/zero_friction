# FirstInvoiceEndDateTimeSuggestionResponseDTO

Represents a suggested end date and time for the first invoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_invoice_end_date_time** | **datetime** | Suggested end date and time for the first invoice | [optional] 

## Example

```python
from billing_client.models.first_invoice_end_date_time_suggestion_response_dto import FirstInvoiceEndDateTimeSuggestionResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FirstInvoiceEndDateTimeSuggestionResponseDTO from a JSON string
first_invoice_end_date_time_suggestion_response_dto_instance = FirstInvoiceEndDateTimeSuggestionResponseDTO.from_json(json)
# print the JSON string representation of the object
print(FirstInvoiceEndDateTimeSuggestionResponseDTO.to_json())

# convert the object into a dict
first_invoice_end_date_time_suggestion_response_dto_dict = first_invoice_end_date_time_suggestion_response_dto_instance.to_dict()
# create an instance of FirstInvoiceEndDateTimeSuggestionResponseDTO from a dict
first_invoice_end_date_time_suggestion_response_dto_from_dict = FirstInvoiceEndDateTimeSuggestionResponseDTO.from_dict(first_invoice_end_date_time_suggestion_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


