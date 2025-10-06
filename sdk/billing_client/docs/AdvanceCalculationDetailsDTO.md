# AdvanceCalculationDetailsDTO

Represents details of advance payment calculations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_advance_amount_excl_vat** | **float** | New advance amount excluding VAT | [optional] 
**new_advance_amount_incl_vat** | **float** | New advance amount including VAT | [optional] 
**old_advance_amount_incl_vat** | **float** | Old advance amount including VAT | [optional] 
**next_invoice_amount_incl_vat** | **float** | Next invoice amount including VAT | [optional] 
**next_invoice_amount_accuracy** | [**Level**](Level.md) | Accuracy level of the next invoice amount | [optional] 
**recalculation_type** | [**AdvanceRecalculationType**](AdvanceRecalculationType.md) | Type of advance recalculation | [optional] 
**fallback_reason** | [**AdvanceCalculationFallbackReason**](AdvanceCalculationFallbackReason.md) | Reason for fallback in advance calculation | [optional] 
**changed_by_user_id** | **str** | Identifier of the user who made the changes | [optional] 

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


