# BillingCompletenessInsightsResponseDTO

Represents insights and status information about billing completeness.  This DTO provides detailed information about advance payments, invoice periods, and billing status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_advance_start_date_time** | **datetime** | The date and time when the next advance payment period will start. | [optional] 
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) | The frequency at which advance payments are collected. | [optional] 
**advance_amount** | **float** | The amount of each advance payment. | [optional] 
**advances_created** | **int** | The number of advance payments that have been created. | [optional] 
**advances_needed** | **int** | The number of advance payments that are still needed. | [optional] 
**invoice_frequency** | [**InvoiceFrequency**](InvoiceFrequency.md) | The frequency at which invoices are generated. | [optional] 
**active_invoice_start_date_time** | **datetime** | The start date and time of the currently active invoice period. | [optional] 
**active_invoice_end_date_time** | **datetime** | The end date and time of the currently active invoice period. | [optional] 
**active_status** | [**BillingCompletenessStatus**](BillingCompletenessStatus.md) | The current status of the active billing completeness. | [optional] 
**active_billing_completeness_id** | **str** | The unique identifier of the active billing completeness entry. | [optional] 
**estimated_invoice_id** | **str** | The unique identifier of the estimated invoice. | [optional] 
**estimated_invoice_amount** | **float** | The estimated amount of the invoice. | [optional] 
**has_open_advance_periods_with_different_tax_rate** | **bool** | Indicates whether there are open advance periods with different tax rates. | [optional] 
**accuracy_state** | [**Level**](Level.md) | The current level of accuracy of the billing data. | [optional] 
**draft_invoice_id** | **str** | The unique identifier of the draft invoice. | [optional] 
**draft_invoice_amount** | **float** | The amount of the draft invoice. | [optional] 

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


