# BillingCompletenessInsightsResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_advance_start_date_time** | **datetime** |  | [optional] 
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) |  | [optional] 
**advance_amount** | **float** |  | [optional] 
**advances_created** | **int** |  | [optional] 
**advances_needed** | **int** |  | [optional] 
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) |  | [optional] 
**active_invoice_start_date_time** | **datetime** |  | [optional] 
**active_invoice_end_date_time** | **datetime** |  | [optional] 
**active_status** | [**BillingCompletenessStatus**](BillingCompletenessStatus.md) |  | [optional] 
**active_billing_completeness_id** | **str** |  | [optional] 
**estimated_invoice_id** | **str** |  | [optional] 
**estimated_invoice_amount** | **float** |  | [optional] 
**has_open_advance_periods_with_different_tax_rate** | **bool** |  | [optional] 
**accuracy_state** | [**Level**](Level.md) |  | [optional] 
**draft_invoice_id** | **str** |  | [optional] 
**draft_invoice_amount** | **float** |  | [optional] 

## Example

```python
from billing_client.models.billing_completeness_insights_response_dto import BillingCompletenessInsightsResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingCompletenessInsightsResponseDTO from a JSON string
billing_completeness_insights_response_dto_instance = BillingCompletenessInsightsResponseDTO.from_json(json)
# print the JSON string representation of the object
print(BillingCompletenessInsightsResponseDTO.to_json())

# convert the object into a dict
billing_completeness_insights_response_dto_dict = billing_completeness_insights_response_dto_instance.to_dict()
# create an instance of BillingCompletenessInsightsResponseDTO from a dict
billing_completeness_insights_response_dto_from_dict = BillingCompletenessInsightsResponseDTO.from_dict(billing_completeness_insights_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


