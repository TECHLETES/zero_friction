# AdvanceCalculationDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_advance_amount_excl_vat** | **float** |  | [optional] 
**new_advance_amount_incl_vat** | **float** |  | [optional] 
**old_advance_amount_incl_vat** | **float** |  | [optional] 
**next_invoice_amount_incl_vat** | **float** |  | [optional] 
**next_invoice_amount_accuracy** | [**Level**](Level.md) |  | [optional] 
**recalculation_type** | [**AdvanceRecalculationType**](AdvanceRecalculationType.md) |  | [optional] 
**fallback_reason** | [**AdvanceCalculationFallbackReason**](AdvanceCalculationFallbackReason.md) |  | [optional] 
**changed_by_user_id** | **str** |  | [optional] 
**applied_period_percentage** | **float** |  | [optional] 
**advance_calculation_type** | [**AdvanceCalculationType**](AdvanceCalculationType.md) |  | [optional] 

## Example

```python
from billing_client.models.advance_calculation_details_dto import AdvanceCalculationDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AdvanceCalculationDetailsDTO from a JSON string
advance_calculation_details_dto_instance = AdvanceCalculationDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(AdvanceCalculationDetailsDTO.to_json())

# convert the object into a dict
advance_calculation_details_dto_dict = advance_calculation_details_dto_instance.to_dict()
# create an instance of AdvanceCalculationDetailsDTO from a dict
advance_calculation_details_dto_from_dict = AdvanceCalculationDetailsDTO.from_dict(advance_calculation_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


