# EstimatedAdvancePeriodDTO

Represents an advance period in an estimated invoice.  This DTO contains information about advance payments, including amounts, periods, and payment status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period_start_date_time** | **datetime** | The start date and time of the advance period. | [optional] 
**period_end_date_time** | **datetime** | The end date and time of the advance period. | [optional] 
**amount_excl_vat** | **float** | The advance amount excluding VAT. | [optional] 
**vat** | **float** | The VAT amount for this advance. | [optional] 
**amount_incl_vat** | **float** | The advance amount including VAT. | [optional] 
**quantity** | **float** | The quantity associated with this advance. | [optional] 
**unit_price** | **float** | The unit price for this advance. | [optional] 
**vat_rate** | **float** | The VAT rate applied to this advance. | [optional] 
**paid** | **bool** | Indicates whether this advance has been paid. | [optional] 
**invoice_id** | **str** | The unique identifier of the invoice associated with this advance. | [optional] 

## Example

```python
from billing_client.models.estimated_advance_period_dto import EstimatedAdvancePeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedAdvancePeriodDTO from a JSON string
estimated_advance_period_dto_instance = EstimatedAdvancePeriodDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedAdvancePeriodDTO.to_json())

# convert the object into a dict
estimated_advance_period_dto_dict = estimated_advance_period_dto_instance.to_dict()
# create an instance of EstimatedAdvancePeriodDTO from a dict
estimated_advance_period_dto_from_dict = EstimatedAdvancePeriodDTO.from_dict(estimated_advance_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


