# PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_ids** | **List[str]** |  | 
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  | [optional] 
**invoice_start_date_time_utc** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.property_group_first_invoice_end_date_time_suggestions_request import PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest from a JSON string
property_group_first_invoice_end_date_time_suggestions_request_instance = PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest.to_json())

# convert the object into a dict
property_group_first_invoice_end_date_time_suggestions_request_dict = property_group_first_invoice_end_date_time_suggestions_request_instance.to_dict()
# create an instance of PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest from a dict
property_group_first_invoice_end_date_time_suggestions_request_from_dict = PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest.from_dict(property_group_first_invoice_end_date_time_suggestions_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


